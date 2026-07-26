# AgentOS (by Midnight)

AgentOS is the trust layer for autonomous AI agents. It gives AI agents identities, revocable permissions, encrypted secrets, and auditable actions. Actions are enforced by Midnight smart contracts and proven with zero-knowledge proofs so organizations can let agents act safely.

Product idea (short):
AgentOS lets companies create AI agents (FinanceBot, HRBot) and give them limited, revocable capabilities (e.g., "pay invoices up to $5k"). Agents can act, but every action is checked by on-chain policies and produces a verifiable proof.

Quick setup (local):
1. Install Compact compiler:
   curl --proto '=https' --tlsv1.2 -LsSf https://github.com/midnightntwrk/compact/releases/latest/download/compact-installer.sh | sh
2. Start proof server (requires Docker):
   docker run -d --name midnight-proof-server -p 6300:6300 midnightntwrk/proof-server:latest midnight-proof-server -v
3. Compile contract:
   ./scripts/compile.sh
4. Run test:
   ./tests/compile.test.sh

Artifacts:
- Compile screenshot: screenshots/compile.png
- Managed artifacts: managed/ (contains compiler/, contract/, keys/, zkir/)

Public vs Private (one line):
- Public ledger = `export ledger` fields (visible on-chain).
- Private witness = `witness` inputs (never published; used only in proofs).

