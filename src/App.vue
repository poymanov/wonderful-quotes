<template>
  <div class="container">
    <NewQuote @quoteAdded="newQuote"></NewQuote>
    <QuoteGrid :quotes="quotes"></QuoteGrid>
  </div>
</template>

<script>
  import QuoteGrid from './components/QuoteGrid.vue';
  import NewQuote from './components/NewQuote.vue';

  export default {
    data: () => {
      return {
        quotes: ['Just a quote to see something'],
        maxQuotes: 10
      }
    },
    methods: {
      newQuote(quote) {
        this.quotes.unshift(quote);
      }
    },
    components: {
      QuoteGrid,
      NewQuote
    }
  }
</script>

<style>
</style>
