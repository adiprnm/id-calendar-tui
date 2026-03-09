# Releasing

## Setup Trusted Publishing

Before the workflow can publish to RubyGems, you need to configure **Trusted Publishing**:

1. Go to https://rubygems.org/gems/id-calendar-tui (create the gem first if needed)
2. Click **Settings**
3. Select **Trusted Publishing** from the sidebar
4. Click **Add Trusted Publisher**
5. Configure:
   - **Repository:** adiprnm/id-calendar-tui
   - **Workflow name:** release.yml
   - **Environment:** (optional, leave blank)
6. Click **Create Trusted Publisher**

Now when you push a tag, GitHub Actions can publish without an API key!

## Creating a Release

```bash
# Update version in id-calendar-tui.gemspec
# Update CHANGELOG.md
git add .
git commit -m "Bump version to x.x.x"
git tag vx.x.x
git push origin vx.x.x
```

This will automatically:
- Publish to RubyGems using Trusted Publishing
- Publish Docker image to GHCR