# Slides

This is a project based on [Slidev](https://github.com/slidevjs/slidev)

## branches
This project using different branches for different purpose
- `base` (this branch): common config for a new slide
- `homepage`: homepage and entrance for all slides
- `gh-pages`: for GitHub deployment
- other branches: each one for a slide, branch name is the slide route name

## dev
local dev
- `npm install`
- `npm run dev`
- visit http://localhost:3030

Edit the [slides.md](./slides.md) to see the changes

## deployment

when finish slide development,run `npm run deploy -- "Description of this slide"`. It will update the slide and 
description(using the cmd parameter) in homepage and deploy to GitHub page
