# AgentOS by Midnight (Primary)

AgentOS — The Trust Layer for Autonomous AI

AgentOS is the control plane for trusted AI agents. It provides programmable permissions (capability tokens), confidential memory, secure secret vaults, policy-enforced execution, multi-agent approval flows, human checkpoints, and cryptographically verifiable audit logs powered by Midnight smart contracts.

Elevator pitch

AgentOS is the trust layer for autonomous AI. Developers deploy AI agents with explicit, revocable capabilities. Actions are enforced by on-chain policies and proven with ZK artifacts — giving organizations verifiable assurance without exposing secrets.

MVP (48–72h)

- Create an Agent (UI/CLI)
- Assign capability tokens (Stripe.read, bank.transfer<$X)
- Encrypted memory & secret vault demo
- Policy enforcement via a Compact contract (deny/allow)
- Audit log with a "View Proof" demo linking to a stored proof

Demo flow (3 min)

1. Create Finance Agent and grant Stripe permission
2. Ask the agent to pay invoice (allowed) — shows proof
3. Ask the agent to transfer $50,000 (denied) — shows audit entry + proof

Next steps (pick one):
- Make Compact contract for policy enforcement and compile
- Scaffold minimal SaaS demo (static UI + scripts)
- Implement capability token smart object + simple mint/revoke


## Screenshots

Compile output and managed/ listing:

![Compile output](screenshots/compile.png)

