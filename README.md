# smolla-marketing

Marketing and landing page site served at the apex smol.la domain. Built on Vue 3 and TypeScript.

## Repository layout

```
frontend/   Vue 3 + TypeScript static site
```

## Local development

```
cd frontend
npm install
npm run dev
```

## Workflows

- `ci.yml` — runs on every push and PR
- `deploy-prod.yml` — runs on push to `main`
- `deploy-staging.yml` — runs on push to `develop`
- `deploy-test.yml` — manual dispatch for shared test slot
- `release-please.yml` — opens release PRs based on conventional commits
- `sync-main-to-develop.yml` — back-merges hotfixes from `main` into `develop`

## Versioning

Managed by `release-please`; the canonical version lives in `version.txt` and is propagated to project files on each release.

## Licence

GNU Affero General Public License v3.0 — see [LICENSE](LICENSE).

Copyright (c) 2026 Adam Salisbury.

