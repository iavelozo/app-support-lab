# Runbook: Rollback

## Cuándo usarlo
Deploy causó errores en producción.

## Opción A: revertir commit
```bash
git revert <commit_sha>
git push origin main
