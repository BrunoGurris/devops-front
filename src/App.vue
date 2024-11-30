<template>
  <div class="row">
    <Page />
    <Page />
    <Page />
  </div>
</template>

<script>
import Page from '@/components/Page.vue'

export default {
  name: 'App',
  components: {
    Page
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  margin: 0;
}
</style>
