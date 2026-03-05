<!-- Project README — polished -->
# Conversational Appointment Orchestrator

> Event-driven, self-hosted WhatsApp scheduling system with autonomous slot negotiation, real-time validation, and observability.

[![Status](https://img.shields.io/badge/status-alpha-yellow.svg)](https://example.com)

## Table of contents

- [Overview](#overview)
- [Features](#features)
- [Tech stack](#tech-stack)
- [Quick start](#quick-start)
- [Deployment](#deployment)
- [Observability & Metrics](#observability--metrics)

## Overview

The Conversational Appointment Orchestrator is an event-driven system that lets users schedule appointments via conversational channels (WhatsApp). The system performs autonomous negotiation of appointment slots, validates availability in real time, integrates with Google Calendar, and persists operational metrics for observability and analysis.

This repository contains orchestration and documentation for a self-hosted deployment using containerization and n8n workflows.

## Features

- ✅ Conversational slot negotiation (AI-assisted)
- ✅ Real-time availability validation against calendar sources
- ✅ Google Calendar integration for confirmations and syncing
- ✅ Metrics persistence (Google Sheets by default for lightweight load)
- ✅ Containerized deployment with Docker
- ✅ Event-driven orchestration (n8n)

## Tech stack

- Orchestration: n8n
- Containers: Docker
- AI: Gemini or OpenAI
- Calendar: Google Calendar API
- Metrics: Google Sheets (lightweight) and optional PostgreSQL for v2
- State & persistence: PostgreSQL (T.B.D)

## Quick start

These are minimal steps to get a local/dev environment running.

1. Copy example env vars and set credentials (Google, OpenAI, n8n):

```bash
cp .env.example .env
# Edit .env with your keys: OPENAI_API_KEY, GOOGLE_CREDENTIALS, N8N_BASIC_AUTH
```

2. Start services with Docker Compose (example):

```bash
docker compose up -d
```

3. Open the n8n UI and import the provided workflows to start the orchestrator.

```
n8n → http://localhost:5678
Evolution API → http://localhost:8080
```

## Deployment

- T.B.C

## Observability & Metrics

- Persist operational metrics to Google Sheets by default for lightweight reporting.
- Recommended: introduce Prometheus + Grafana for production-grade metrics and dashboards.
- Add structured JSON logging and a `/health` endpoint to enable liveness/readiness checks.

## Future ideas
- Add Prometheus metrics & Grafana's dashboards
- Expose endpoint `/health` with liveness/readiness
- Add structured JSON logging (stdout)
- Separate the convesation in a microservice
- Add simple tests and end-to-end benchmarks