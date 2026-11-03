# Gelo Prime

English · [Português](README.pt-BR.md)

Reseller recruitment art for an ice brand.

## Status

Archived (November 2026). One-off deliverable from October 2026: two social media images, made once and delivered.

## What it does

A recruitment piece ("become a reseller") for a small packaged ice brand, in two formats: feed (1080 x 1350) and story (1080 x 1920). Instead of a photo montage, the pile of ice cubes is a 3D scene drawn in the browser with Three.js, around the brand logo, and the final images are screenshots of that page taken by headless Chrome.

## What I learned

- **An HTML page is a good art file.** Text stays editable, both formats come from one source, and a new size is one more line in `render.ps1`.
- **Headless Chrome needs time for WebGL.** `render.ps1` uses `--virtual-time-budget` and `--enable-unsafe-swiftshader` so the 3D scene can draw without a GPU and finish before the screenshot.

## Run locally

```powershell
artes\render.ps1
```

It opens `artes/revendedor.html#feed` and `#story` in headless Chrome and saves `artes/gelo-prime-revendedor-feed.png` and `-story.png` (not versioned). Needs Chrome installed and internet access: Three.js 0.170.0 and the Barlow fonts load from CDNs.

## Folders

```
artes/revendedor.html   the art: layout, text and the Three.js ice scene
artes/render.ps1        renders both formats with headless Chrome
artes/fonte/            the brand logo (source photo and cut-out)
```

## License

All rights reserved. Published as portfolio; not licensed for reuse. See [LICENSE](LICENSE). The logo and brand belong to the client.
