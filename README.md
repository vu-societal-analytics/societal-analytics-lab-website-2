# Societal Analytics Lab website

A [Hugo](https://gohugo.io/) site for societal-analytics.nl. Built and tested with Hugo 0.170.1. There is no theme to install: the layouts, styles and script are all in this repository.

## Preview locally

    hugo server

Then open http://localhost:1313/.

## Publish with GitHub Pages

1. Push this folder to the `main` branch of your repository.
2. In the repository, open Settings, then Pages, and set Source to "GitHub Actions".
3. The workflow in `.github/workflows/hugo.yaml` builds and deploys on every push.
4. For societal-analytics.nl, point the domain's DNS at GitHub Pages and keep `static/CNAME`. Tick "Enforce HTTPS" in Settings, Pages.

Test first on `https://<username>.github.io/<repository>/` before moving the domain. Links are relative, so the site works on both addresses.

## Where things live

| What | Where |
|---|---|
| Colours, fonts, layout (shared by all pages) | `static/css/style.css` |
| Filter buttons on Events and Blog | `static/js/filter.js` |
| Page templates | `layouts/` |
| Menu, email address, social links, member form | `hugo.toml` |
| Team members | `data/team.yaml` |
| Projects (home page and About table) | `data/projects.yaml` |
| Event types and blog categories | `data/eventtypes.yaml`, `data/blogcategories.yaml` |

## Add an event

Create `content/events/<yyyymmdd>_<name>.md`:

    ---
    title: "R-Workshop: Spatial data in R"
    date: 2027-03-15
    type: "workshop"        # workshop, film, talk or community
    hybrid: true            # optional
    when: "March 15th, 16:00 to 18:00"
    summary: "One or two sentences for the list."
    upcoming: true          # shows it in the "Next up" banner; remove after the event
    ---

    Full description here.

The `date` decides the year group and the order in the list. It does not have to be the event day.

## Add a blog post

Create `content/blogs/<yyyymmdd>_<name>.md` with `title`, `date`, `category` (tools, computing or funding), `author` and `summary`. The newest post becomes the "Latest post" banner.

## Add a service

Create `content/services/<name>.md` with `title`, `summary` and `weight` (order). A vacancy uses `vacancy: true` and an `expiryDate`, after which it disappears from the site by itself.

## Still to do

- Replace the short text on each event, post and service page with the full text from the old site. These pages currently show only the summary. The old addresses are kept, so existing links keep working.
- Fill in `stack`, licence and repository for each project in `data/projects.yaml`, then remove the note under the table in `layouts/about/list.html`.
- Add team photos: put the file in `static/images/team/` and set `image: team/<file>` for the person in `data/team.yaml`. Initials show until then.
- Add your logo and illustrations to `static/images/` and use them in the templates. The header currently shows a simple placeholder mark.
- Check the `date` of each event and post. The dates were taken from the old page addresses.
