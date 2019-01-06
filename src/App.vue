<template>
  <div class="container">
    <QuoteGrid :quotes="quotes"></QuoteGrid>
  </div>
</template>

<script>
  import QuoteGrid from './components/QuoteGrid.vue';

  export default {
    data: () => {
      return {
        quotes: ['Just a quote to see something'],
        maxQuotes: 10
      }
    },
    components: {
      QuoteGrid
    }
  }
</script>

<style>
</style>
