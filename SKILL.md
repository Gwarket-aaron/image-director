---
name: image-director
description: Turn rough visual ideas, briefs, reference images, or still-image requests into deliberate, model-ready image prompts. Use for covers, posters, product shots, portraits, scenes, storyboard frames, image edits, prompt refinement, or image analysis to prompt. Do not use for moving-camera or time-sequenced video requests.
---

# Image Director

Turn the user's intent into a precise still-image visual contract. Preserve the idea instead of forcing every request into the same cinematic style.

## Workflow

1. Classify the task as generation, reference-based generation, image analysis, or prompt refinement.
2. Extract the stated subject, visible action, environment, purpose, format, style, mood, and constraints.
3. Ask at most one concise question only when the answer would materially change the result. Otherwise state a reversible assumption.
4. Choose one primary shot size, angle, composition logic, perspective feel, focus strategy, and lighting logic.
5. Separate observable properties from inferred intent. Do not claim hidden camera metadata or movement from one image.
6. Choose the smallest useful output mode.
7. When image generation is available and requested, pass the completed prompt to that tool.

## Output modes

### Quick prompt

Return:

- one model-ready prompt
- an assumptions line only when needed
- negative constraints only for likely failure modes

### Director treatment

Return:

1. visual intent
2. selected shot design and why it serves the intent
3. model-ready prompt
4. one restrained alternative only when it creates a materially different result

### Image analysis to prompt

Return:

1. visible evidence
2. cinematography classification with confidence
3. uncertain or unverifiable attributes
4. a reproducible generation prompt

## Prompt construction

Build in this order:

`subject and visible action + environment + shot size + camera angle + composition and spatial relationship + perspective feel + focus and depth + motivated lighting + colour and texture + necessary constraints`

Use functional visual language. Prefer “low-angle medium shot with large negative space above the subject” over “epic cinematic masterpiece.”

Read the matching file in `templates/` when the user requests a specific output mode. Use `references/cinematography-language.md` when a term needs to be selected or explained.

## Guardrails

- Do not introduce camera movement into a still-image prompt as observed motion.
- Do not invent absent major subjects during an edit unless compositing or regeneration was requested.
- Do not stack conflicting shot sizes, angles, or lighting setups.
- Do not confuse mood words with observable visual instructions.
- Keep identity, geometry, text, product, and brand constraints explicit when they matter.

