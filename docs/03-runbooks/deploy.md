# Runbook: Deploy

## Pre-requisitos
- [ ] PR aprobado y mergeado en `develop`
- [ ] Tag creado: `git tag -a vX.Y.Z -m "release"`
- [ ] Backup reciente disponible

## Pasos
1. `git checkout main && git pull`
2. `git merge release/vX.Y.Z`
3. `git tag vX.Y.Z && git push origin main --tags`
4. Ejecutar `scripts/deploy.sh`
5. Verificar con `scripts/healthcheck.sh`

## Rollback
Ver `docs/03-runbooks/rollback.md`
