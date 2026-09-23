# Khalil Shili — Personal ID

A lightweight, responsive personal profile card built with semantic HTML and modern CSS. The page works as a static site and can be deployed directly to Vercel, GitHub Pages, Netlify, or any web server.

## Features

- Responsive mobile-first profile card.
- Click-to-call, email, WhatsApp, Telegram, and map links.
- Downloadable personal and Telegram QR codes.
- SEO metadata, Open Graph preview data, and Person structured data.
- Keyboard navigation, visible focus states, skip link, descriptive image alt text, and reduced-motion support.
- No framework or build step required.

## Run locally

```bash
git clone https://github.com/Shilikhalile/khalil-personal-id.git
cd khalil-personal-id
python3 -m http.server 8080
```

Open `http://localhost:8080` in a browser. The project must be served over HTTP during testing because some browser features behave differently when opening `file://` URLs.

## Quality check

Run the included smoke test before publishing:

```bash
./tests/smoke-test.sh
```

## Deployment

The production URL is [khalil-personal-id.vercel.app](https://khalil-personal-id.vercel.app). For Vercel, import the repository and keep the project as a static site with no build command. For GitHub Pages, publish the `main` branch root.

## Maintenance checklist

Update the contact details and social links in `index.html` whenever they change. Replace the profile photo and QR images in `assets/` with optimized WebP or AVIF versions in the future to reduce page weight. Keep the canonical URL, Open Graph URL, and structured-data URL aligned with the actual deployed domain.
