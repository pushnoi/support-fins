---
name: cloudflare-beheer
description: Check or manage Cloudflare DNS, proxy and TLS for the Support Fins home-server hostname after verifying its zone and ownership.
---

Read the canonical instructions in `/Users/pushnoi/.codex/skills/cloudflare-beheer/SKILL.md` when the hostname is under `pushnoi.icu`. For another zone, first verify that the connected Cloudflare account can access it and use the same read-before-write discipline. Do not use the upstream app's `printfins.com` hostname as the fork's deployment target by default. Keep OAuth and credentials outside this repository.
