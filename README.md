# elenashliaga.github.io

Personal physics blog of Elena Shliaga, published at **https://elenashliaga.github.io**.

GitHub Pages builds this repository automatically with Jekyll on every push to `main`. One new post appears every week.

## What is inside

- `_posts/` — published articles (`YYYY-MM-DD-slug.md`), Markdown + front matter
- `about.md` — about me / CV page
- `_layouts/`, `_includes/`, `assets/css/` — minimal custom Jekyll theme (no external theme gem)
- `assets/img/<post-slug>/` — figures for posts
- `scripts/new_post.sh` — scaffold a new post
- `scripts/publish.sh` — commit + push (the site rebuilds automatically)
- `robots.txt`, sitemap (jekyll-sitemap), RSS (`/feed.xml`, jekyll-feed), SEO meta (jekyll-seo-tag)

Math in posts is rendered by MathJax: write `$inline$` and `$$display$$` (kramdown passes it through).

## Workflow

Drafts, topic backlog, analytics, and AI instructions live **outside this repository**, in `../` (the private `physics-blog` workspace): see `../AGENTS.md` and `../growth-plan/WORKFLOW.md`. A post lands here only when finished and checked.

## Publish a post

```bash
scripts/publish.sh "Publish: <post title>"
```

## Local preview (optional)

```bash
bundle install        # once
bundle exec jekyll serve
# open http://localhost:4000
```

Without Ruby, just proofread the Markdown: what you see in the file is what Jekyll renders.

## Notes

- If the site shows 404 after a push, check GitHub → Settings → Pages: source must be "Deploy from branch", branch `main`, folder `/ (root)`.
- Content © Elena Shliaga. Articles discuss published knowledge only — never unpublished research results.
