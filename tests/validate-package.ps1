$ErrorActionPreference = "Stop"

$root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$required = @(
  "README.md", "LICENSE", "NOTICE.md", "CHANGELOG.md", "SECURITY.md", "PRIVACY.md",
  "SKILL.md", "VALIDATION.md", "references/cinematography-language.md",
  "references/source-register.md", "templates/quick-prompt.md", "templates/director-spec.md",
  "templates/image-analysis.md", "examples/social-cover/brief.md", "examples/social-cover/output.md",
  "examples/product-scene/brief.md", "examples/product-scene/output.md"
)

$missing = $required | Where-Object { -not (Test-Path -LiteralPath (Join-Path $root $_)) }
if ($missing) { throw "Missing required files: $($missing -join ', ')" }

$textFiles = Get-ChildItem -LiteralPath $root -Recurse -File |
  Where-Object { $_.Extension -in @(".md", ".yml", ".yaml") }
$combined = ($textFiles | ForEach-Object { Get-Content -Raw -LiteralPath $_.FullName }) -join "`n"

$forbidden = @(
  'C:\\Users\\', '/Users/', '/home/', 'BEGIN (RSA|OPENSSH|EC) PRIVATE KEY',
  'gho_[A-Za-z0-9]+', 'github_pat_[A-Za-z0-9_]+'
)
foreach ($pattern in $forbidden) {
  if ($combined -match $pattern) { throw "Forbidden content matched: $pattern" }
}

foreach ($file in $textFiles) {
  $markdownLinks = [regex]::Matches((Get-Content -Raw -LiteralPath $file.FullName), '\[[^\]]+\]\((?!https?://|mailto:|#)([^)]+)\)')
  foreach ($match in $markdownLinks) {
    $target = $match.Groups[1].Value.Split('#')[0]
    if (-not $target) { continue }
    $candidate = Join-Path $file.DirectoryName $target
    if (-not (Test-Path -LiteralPath $candidate)) { throw "Broken link in $($file.Name): $target" }
  }
}

Write-Output "Image Director package validation passed."
