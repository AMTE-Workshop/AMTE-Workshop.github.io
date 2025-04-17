# AMTE Workshop Website

This repository hosts the source for the Asynchronous Many-Task Systems for Exascale (AMTE) workshop website. It's powered by Jekyll and published via GitHub Pages.

## Local Setup

Prerequisites: Ruby & Bundler.

1. Install dependencies:
   ```
   bundle install
   ```

2. Serve locally:
   ```
   bundle exec jekyll serve
   ```

   Visit http://localhost:4000/<year> (e.g., `/2025`) or omit the year for the default.

## Site Structure

- **_config.yml**: Site-wide settings (theme, baseurl, `current_year`).
- **Gemfile/Gemfile.lock**: Jekyll & theme dependencies.
- **assets/**: CSS, JS, images, fonts.
- **_layouts/**: Page templates (`default.html`, `year.html`).
- **_includes/**: Content fragments:
  - `index.md`, `committee.md`, `call-for-papers.md`, `papers.md`, `invited-talk.md`, `keynote.md`, `panel.md`, `program.md`.
- **_data/years/<year>/**: YAML data files:
  - `config.yml` (title, date, location, logo)
  - `cfp.yml`, `committee.yml`, `papers.yml`, `invited_talk.yml`, `keynote.yml`, `panel.yml`
- **<year>/**: Per-year pages with:
  ```
  ---
  layout: default
  year: "<year>"
  ---
  {% include <page>.md %}
  ```
- **_site/**: Generated site (ignored).

## Editing Content

To update a given year (e.g., `2025`):

- **Workshop Info**: `_data/years/2025/config.yml`
- **Call for Papers**: `_data/years/2025/cfp.yml`
- **Committee**: `_data/years/2025/committee.yml` (`organizing` & `program`)
- **Accepted Papers**: `_data/years/2025/papers.yml`
- **Invited Talks**: `_data/years/2025/invited_talk.yml`
- **Keynotes**: `_data/years/2025/keynote.yml`
- **Panel**: `_data/years/2025/panel.yml`
- **Program Schedule**: edit `_includes/program.md` (shared template) or override in `<year>/program.md`.
- **Index & Topics**: edit `_includes/index.md`.

### Adding a New Year

1. Create a new folder `2026/` and add standard pages:
   ```
   ---
   layout: default
   year: "2026"
   ---
   {% include <page>.md %}
   ```
2. Add `_data/years/2026/` with `config.yml`, `cfp.yml`, `committee.yml`, `papers.yml`, `invited_talk.yml`, `keynote.yml`, `panel.yml`.
3. (Optional) Update `current_year` in `_config.yml`.

## Deployment

Push to `main`—GitHub Pages builds & publishes automatically.