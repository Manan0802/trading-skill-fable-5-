# Fable 5 Deadline Kit — 3 Reusable Skills

Built from `Fable5_Skills_DM_Guide.pdf`. Once installed, these run on **any model** — including free tiers.

## The Skills

| Skill | What it does | Trigger it with |
|-------|--------------|-----------------|
| `indian-market-trading-analyst` | Full trade plan for NSE/BSE, Nifty, Bank Nifty, F&O. Auto-rejects setups below 1:2 risk-reward, sizes position to 1% capital risk. | "Bank Nifty CMP 48,200, support 48,000, resistance 48,600, capital 2 lakh" |
| `work-quality-auditor` | 3-pass QC on any draft (logic gaps → 3 crisp rewrites → Boss Test) ending in a Ship it / Fix verdict. Raw meeting notes become decisions + owners + deadlines. Calibrates to stakes first. | Paste any draft or meeting notes |
| `secure-code-reviewer` | Defensive OWASP Top 10 audit of your own code/config. Severity-ranked findings, one-line risk context, exact code fix. | Paste code, a file, or stack description |

## Install

**Claude.ai:** Settings → Capabilities → Skills → upload the `.zip` from `zips/`.

**Claude Code / Codex:** copy the skill folder into `~/.claude/skills/`:

```bash
cp -r indian-market-trading-analyst work-quality-auditor secure-code-reviewer ~/.claude/skills/
```

## Notes

- Trade plans, audits and reviews are **decision support** — you still make the call. Not investment advice.
- The code reviewer is defensive-only: it audits code you own and won't write exploits.
