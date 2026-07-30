import type { WitnessContext } from '@midnight-ntwrk/compact-runtime';
import type { Ledger, Witnesses } from '../managed/contract/index.js';

/**
 * The caller's private state. It lives only on the caller's machine — the
 * witness below is the only thing that reads it, and the circuit only ever
 * sees the value from inside a proof.
 */
export type CounterPrivateState = { readonly secretStep: bigint };

export const initialPrivateState = (secretStep: bigint): CounterPrivateState => ({ secretStep });

export const witnesses: Witnesses<CounterPrivateState> = {
  secret_step: ({
    privateState,
  }: WitnessContext<Ledger, CounterPrivateState>): [CounterPrivateState, bigint] => [
    privateState,
    privateState.secretStep,
  ],
};
