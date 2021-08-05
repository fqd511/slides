<template>
  <h3>Slides</h3>
  <a v-for="slide in slides" :key="slide.link" :href="slide.link">{{ slide.desc }}</a>
</template>

<script lang="ts" setup>
// TODO:(fanqidi:2021/8/5) 只显示最后一项
import slides from "../db.json";
</script>

<style>
h3,a {
  width: 100%;
  text-align: center;
}
a{
  line-height: 1.5rem;
  display: block;
  text-decoration: none;
}
</style>
