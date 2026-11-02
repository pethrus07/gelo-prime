Português | [English](README.md)

# Arte de recrutamento de revendedor para uma marca de gelo

> **Arquivado (2026-11).** Entrega pontual de outubro de 2026: duas imagens para rede social, feitas uma vez e entregues.

## O que foi

Uma peça de recrutamento ("seja um revendedor") para uma pequena marca de gelo embalado, em dois formatos: feed (1080 x 1350) e story (1080 x 1920). Em vez de montagem de foto, o monte de gelo é uma cena 3D desenhada no navegador com Three.js, em volta do logo da marca, e as imagens finais são capturas dessa página feitas pelo Chrome sem janela.

## Como gerar

```powershell
artes\render.ps1
```

Abre `artes/revendedor.html#feed` e `#story` no Chrome sem janela e salva `artes/gelo-prime-revendedor-feed.png` e `-story.png` (fora do git). Precisa do Chrome instalado e de internet: o Three.js 0.170.0 e as fontes Barlow vêm de CDN.

## Estrutura

```
artes/revendedor.html   a arte: layout, texto e a cena de gelo em Three.js
artes/render.ps1        gera os dois formatos com o Chrome sem janela
artes/fonte/            o logo da marca (foto de origem e recorte)
```

## O que ficou de aprendizado

- **Página HTML é um bom arquivo de arte.** O texto continua editável, os dois formatos saem de uma fonte só, e um tamanho novo é uma linha a mais no `render.ps1`.
- **Chrome sem janela precisa de tempo para WebGL.** O `render.ps1` usa `--virtual-time-budget` e `--enable-unsafe-swiftshader` para a cena 3D desenhar sem placa de vídeo e terminar antes da captura.

## Licença

Todos os direitos reservados. Publicado como portfólio; não licenciado para reuso. Veja o arquivo [LICENSE](LICENSE). O logo e a marca pertencem ao cliente.
