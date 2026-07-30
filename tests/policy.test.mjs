import assert from 'node:assert/strict';
import test from 'node:test';

import {
  createCircuitContext,
  createConstructorContext,
  sampleContractAddress,
} from '@midnight-ntwrk/compact-runtime';

import { Contract, ledger } from '../managed/contract/index.js';

const createSimulator = (initialAmount = 0n) => {
  let transferAmount = initialAmount;
  const contract = new Contract({
    transfer_amount(context) {
      return [context.privateState, transferAmount];
    },
  });
  const initialState = contract.initialState(
    createConstructorContext({}, '0'.repeat(64)),
  );
  let context = createCircuitContext(
    sampleContractAddress(),
    initialState.currentZswapLocalState,
    initialState.currentContractState,
    initialState.currentPrivateState,
  );

  return {
    setTransferAmount(amount) {
      transferAmount = amount;
    },
    submitTransfer() {
      context = contract.impureCircuits.submit_transfer(context).context;
    },
    getLedger() {
      return ledger(context.currentQueryContext.state);
    },
  };
};

test('initializes the public transferred total to zero', () => {
  const simulator = createSimulator();

  assert.equal(simulator.getLedger().total_transferred, 0n);
});

test('adds private transfer amounts to the public aggregate', () => {
  const simulator = createSimulator(25n);

  simulator.submitTransfer();
  assert.equal(simulator.getLedger().total_transferred, 25n);

  simulator.setTransferAmount(75n);
  simulator.submitTransfer();
  assert.equal(simulator.getLedger().total_transferred, 100n);
});
