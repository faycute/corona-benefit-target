<template>
  <Dyagnosis/>
</template>

<script lang="ts">
// @ is an alias to /src
import Vue from 'vue'
import Dyagnosis from '@/components/Dyagnosis.vue'

export default Vue.extend({
  name: 'Home',
  components: {
    Dyagnosis
  }
})
</script>
