<template>
  <div class="container">
    <NewQuote @quoteAdded="newQuote"></NewQuote>
    <QuoteGrid :quotes="quotes" @quoteDeleted="deleteQuote"></QuoteGrid>
    <div class="row">
      <div class="col-sm-12 text-center">
        <div class="alert alert-info">Info: Click on a Quote to delete it</div>
      </div>
    </div>
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
      },
      deleteQuote(index) {
        this.quotes.splice(index, 1);
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
