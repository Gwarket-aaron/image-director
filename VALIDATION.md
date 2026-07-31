# Validation

## Stable-release checks

The `v1.0.0` release is considered stable when all of the following pass on the tagged commit:

1. `tests/validate-package.ps1` returns zero errors in GitHub Actions.
2. Required documentation, templates, examples and workflow files are present.
3. Repository links resolve and no absolute personal path, credential pattern, private prompt history or unlicensed redistributed source is detected.
4. The release ZIP checksum is published with the GitHub Release.

These checks establish package integrity and the stated publication boundary. They do not prove that every model will produce equivalent images.

## Independent external validation

External usability is a separate evidence level. A run qualifies only when a person other than Aaron Huang:

1. installs the tagged release in a clean Codex or Claude skills directory;
2. starts a new session using only the public README;
3. completes the social-cover brief and one brief of their own;
4. records the client, model, operating system, release tag, success or failure, unclear instructions and visible output limits;
5. submits the record through a GitHub issue or pull request without private source material.

Status for `v1.0.0`: **awaiting first non-owner usability record**.

Stable means the reviewed public package and its contract are fixed. It does not mean externally adopted or model-independent.
