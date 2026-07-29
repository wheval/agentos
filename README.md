# AgentOS

**The control center for enterprise AI teams.**

AgentOS helps companies safely deploy, manage, and monitor teams of AI agents. Every agent has its own role, permissions, private memory, secure secrets, and tools. Before an agent performs any sensitive action, AgentOS checks company policies using Midnight, blocks unauthorized actions, and records a tamper-proof audit trail.

Companies can confidently give AI agents access to emails, GitHub, Stripe, CRMs, databases, and wallets without exposing secrets or losing control.

## The Problem

Companies want AI agents to do real work.

But they don't trust them with:
- API keys
- Company documents
- Customer data
- Bank accounts
- Crypto wallets
- Production systems

## The Solution

AgentOS gives every AI agent an identity, secure secrets, private memory, permissions, company policies, verifiable actions, and an audit history.

Think of it as giving every AI employee an ID badge, job description, access card, and manager.

## AI Teams

Instead of one AI assistant, companies create an AI workforce:

- **Finance Agent** — Pays invoices, reads email, generates reports (can't transfer >$5k)
- **Developer Agent** — Creates PRs, reviews code, deploys staging (can't deploy production)
- **HR Agent** — Manages leave, generates contracts (can't access engineering or finance)
- **Operations Agent** — Manages Slack, Notion, Linear (can't access sensitive data)

Each agent collaborates with others. Founder says "Hire a developer" → HR creates contract → Finance checks budget → Legal reviews → Developer creates GitHub → Operations sets up tools. Every step is verified.

## Why Midnight?

Midnight ensures:
- Policies can't be secretly changed
- Secrets remain private
- Every approval is verifiable
- Every audit record is tamper-proof
- Sensitive actions follow company rules

## Pitch

**30 seconds:** Companies want AI agents to handle real work like paying invoices, reviewing code, and managing operations, but they don't trust them with sensitive data, API keys, or money. AgentOS is the control center for enterprise AI teams. Companies create AI agents, assign permissions, connect tools, and define policies, while Midnight ensures every sensitive action is private, policy-enforced, and cryptographically verifiable.

**One line:** AgentOS is the control center that helps companies safely deploy AI teams using Midnight-powered trust and verification.

## Setup

1. Install Compact:
   curl --proto '=https' --tlsv1.2 -LsSf https://github.com/midnightntwrk/compact/releases/latest/download/compact-installer.sh | sh

2. Start proof server:
   docker run -d --name midnight-proof-server -p 6300:6300 midnightntwrk/proof-server:latest midnight-proof-server -v

3. Compile:
   ./scripts/compile.sh

4. Test:
   ./tests/compile.test.sh

## Public vs Private

- **Public ledger** (`export ledger`): visible on-chain
- **Private witness** (`witness`): never published; used only in proofs

## Compile Output

![Compile output](screenshots/compile.png)

## Deployment

Deployment is pending until a real Preview or Preprod wallet is available.
