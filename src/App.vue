<template>
  <section>
    <h3>Slides</h3>
    <p
      v-for="(slide, index) in slides.reverse()"
      :key="slide.link"
      @click="onClickSlide(slide, index)"
      :class="{ a: index === 0 }"
    >
      {{ slide.desc }}
    </p>
  </section>
</template>

<script lang="ts" setup>
import slides from "../db.json";

interface Slide {
  link: string;
  desc: string;
}

function onClickSlide(slide: Slide, index: number) {
  if (index !== 0) return;
  window.location.href = window.location.href + slide.link;
}
</script>

<style scoped>
section {
  width: 100%;
  max-width: 652px; /* width from google search result page content */
  border-radius: 2px;
  margin: 20px auto;
  min-height: 80vh;
  position: relative;
  padding: 40px 20px;

  background: repeating-linear-gradient(
        #f1ede9,
        #f1ede9 31px,
        #94acd4 31px,
        #94acd4 32px
      )
      content-box,
    #f1ede9;
  font-family: "Shadows Into Light", cursive;
  line-height: 32px;
  outline: 0;
  font-size: 22px;
}
h3,
p {
  width: calc(100% - 40px);
  text-align: center;
  margin-top: 32px;
  margin-bottom: 32px;
  cursor: default;
}
p.a {
  cursor: pointer;
}
/* stack paper effect */
section {
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}
section:before,
section:after {
  content: "";
  height: 98%;
  position: absolute;
  width: 100%;
  z-index: -1;
}
section:before {
  background: #fafafa;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  left: -5px;
  top: 4px;
  transform: rotate(-2.5deg);
}
section:after {
  background: #f6f6f6;
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
  right: -3px;
  top: 1px;
  transform: rotate(1.4deg);
}
</style>
<style>
html {
  height: 100%;
}
body {
  background: linear-gradient(#ccc, #fff);
}
</style>
