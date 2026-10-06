# App Support Lab 🛠️

Repositorio de práctica para reforzar **Linux + Git** con enfoque en **Application Support**.

## Objetivo
Simular tareas reales de soporte: diagnóstico de logs, despliegues, rollbacks, hotfixes y automatización.

## Estructura
- `docs/` → Apuntes, runbooks y glosario
- `scripts/` → Automatizaciones bash
- `labs/` → Ejercicios por semana
- `environments/` → Configs por entorno
- `reports/` → Salidas de scripts

## Flujo Git
- `main` → estable
- `develop` → integración
- `feature/*` → nuevas funcionalidades
- `hotfix/*` → correcciones urgentes
- `release/*` → preparación de despliegue

## Convención de commits
`tipo(scope): mensaje`
Ej: `feat(scripts): agrega healthcheck básico`
