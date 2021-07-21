<template>
  <h3>Slides</h3>
  <a v-for="link in linkArray" :key="link" :href="link">{{ link }}</a>
</template>

<script lang="ts" setup>
import linkArray from "../db.json";
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
