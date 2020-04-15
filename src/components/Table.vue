<template>
  <v-simple-table>
    <template v-slot:default>
      <thead>
        <tr>
          <th class="text-left">単身世帯</th>
          <th class="text-left">2人世帯</th>
          <th class="text-left">3人世帯</th>
          <th class="text-left">4人世帯</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td v-for="moneyAmount in moneyAmounts" :key="moneyAmount" class="text-left">
            {{ qIndex === 1 ? moneyAmount : moneyAmount * 2 }}万円
          </td>
        </tr>
      </tbody>
    </template>
  </v-simple-table>
</template>

<script lang="ts">
  import Vue from 'vue'

  export default Vue.extend({
    props: {
      qIndex: Number
    },
    data: () => ({
      moneyAmounts: [10, 15, 20, 25]
    })
  })
</script>