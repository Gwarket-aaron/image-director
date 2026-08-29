# Image Director

[![Package validation](https://github.com/Gwarket-aaron/image-director/actions/workflows/package-validation.yml/badge.svg)](https://github.com/Gwarket-aaron/image-director/actions/workflows/package-validation.yml)
[![Release](https://img.shields.io/github/v/release/Gwarket-aaron/image-director)](https://github.com/Gwarket-aaron/image-director/releases/latest)

Image Director turns a rough visual idea, brief, reference image, or existing prompt into a still-image specification that can be generated, inspected, and revised.

It is designed for people who know what an image needs to do but do not want to begin with photography terminology.

## Evaluate it quickly

| Time | What to inspect | What it shows |
| --- | --- | --- |
| 30 seconds | [`examples/social-cover/brief.md`](examples/social-cover/brief.md) → [`output.md`](examples/social-cover/output.md) | How a plain-language request becomes a structured visual specification |
| 2 minutes | [`SKILL.md`](SKILL.md) | The decision sequence, output modes, and evidence boundaries |
| 5 minutes | [`VALIDATION.md`](VALIDATION.md) and the passing badge above | What is automated, what was manually checked, and what is not yet independently validated |

To try it yourself, download the [latest release](https://github.com/Gwarket-aaron/image-director/releases/latest) and follow **Install** below.

## What it produces

- a compact, model-ready prompt
- a director treatment when the decision rationale matters
- an evidence-based image analysis that separates visible facts from inference
- explicit constraints for identity, geometry, text, product details, and composition

The workflow assembles prompts in this order:

`subject and action → environment → shot size → camera angle → composition → perspective → focus → lighting → colour and texture → constraints`

## Install

1. Download the latest release ZIP.
2. Copy the `image-director` folder into your Codex or Claude skills directory.
3. Start a new session so the skill can be discovered.
4. Ask for a still image, cover, key visual, portrait, product scene, storyboard frame, or image prompt.

The package contains instructions and templates only. It does not install an image model or send files by itself.

## First successful task

Try:

> Create a 16:9 editorial cover about a small team reviewing an AI workflow. Keep faces anonymous, reserve quiet space for a headline, and avoid glowing sci-fi interfaces.

Expected result:

1. one primary composition
2. one consistent shot and angle
3. motivated lighting
4. only the constraints that matter
5. a prompt that can be revised field by field

See [`examples/social-cover/`](examples/social-cover/) for a synthetic example.

## Output modes

### Quick prompt

Use when the user wants a prompt or generated image with minimal explanation.

### Director treatment

Use when the visual strategy, trade-offs, or an alternative composition matter.

### Image analysis to prompt

Use when a supplied image needs to be described reproducibly. The workflow does not claim hidden camera metadata or creator intent.

## Limits

- Output varies by image model and model version.
- A single image cannot verify camera body, focal length, movement, or intent.
- The workflow does not guarantee text rendering, identity consistency, or exact geometry.
- It does not add absent subjects to an edit unless the request explicitly calls for compositing or regeneration.
- The packaged workflow is covered by automated structure, link, privacy-boundary and secret scans.
- Independent non-owner usability validation is tracked separately and is not implied by the stable version number.

## Privacy

The files in this repository do not collect telemetry. Your AI client or image provider may process prompts and uploaded images under its own terms. Read [`PRIVACY.md`](PRIVACY.md) before using private material.

## Version

Current package: `v1.0.0`

The repository is licensed under the [MIT License](LICENSE). See [`CHANGELOG.md`](CHANGELOG.md), [`NOTICE.md`](NOTICE.md), [`VALIDATION.md`](VALIDATION.md), and [`tests/acceptance-checklist.md`](tests/acceptance-checklist.md).
