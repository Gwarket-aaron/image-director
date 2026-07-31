# Acceptance checklist

Run this checklist before a release.

## Package

- [ ] A fresh session can discover `SKILL.md`.
- [ ] Every relative link in `README.md` resolves.
- [ ] No absolute personal path is present.
- [ ] No credential, token, `.env` file, private prompt history, or private reference image is present.
- [ ] No text or image from an unlicensed upstream repository is redistributed.

## Workflow

- [ ] Quick prompt returns one coherent prompt.
- [ ] Director treatment explains only consequential decisions.
- [ ] Image analysis separates visible evidence from inference.
- [ ] The result uses one primary shot size and angle.
- [ ] Lighting names a plausible source.
- [ ] Constraints target likely failure modes.

## Model comparison

- [ ] Run the social-cover example on image model A and record visible deviations.
- [ ] Run the same example on image model B and record visible deviations.
- [ ] Do not claim identical or model-neutral performance until the comparison is documented.

## Release status

This checklist is included, but independent external-user validation is still pending for `v0.1.0-preview`.

