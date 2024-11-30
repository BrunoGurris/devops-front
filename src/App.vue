<template>
  <div class="row">
    <Page pageName="Developer" url="https://ac2-dev.ictech.dev" />
    <Page pageName="Staging" url="https://ac2-staging.ictech.dev" />
    <Page pageName="Production" url="https://ac2-prod.ictech.dev" />
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
