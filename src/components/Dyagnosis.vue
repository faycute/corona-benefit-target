<template>
  <v-container>
    <v-row>
      <v-col cols="12" class="mt-3 text-center question-box">
        <p class="question"><span class="q">Q.</span>{{ question }}</p>
        <Table v-if="i === 1 || i === 3" :qIndex="i"/>
        <v-btn @click="yes" class="ma-2" outlined large fab color="pink">はい</v-btn>
        <v-btn @click="no" class="ma-2" outlined large fab color="indigo">いいえ</v-btn>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue'
import Table from '@/components/Table.vue'

const TARGET_INDEX = -1
const NOT_TARGET_INDEX = -2;
const questions = [
  { question: '世帯主の2月〜6月の月収が減った', yes: 1, no: NOT_TARGET_INDEX },
  { question: '世帯主の2月〜6月のいずれかの月収が下表の額以下である', yes: TARGET_INDEX, no: 2 },
  { question: '世帯主の2月〜6月の月収が半分以下になった', yes: 3, no: NOT_TARGET_INDEX },
  { question: '世帯主の2月〜6月のいずれかの月収が下表の額以下である', yes: TARGET_INDEX, no: NOT_TARGET_INDEX },
];

export default Vue.extend({
  name: 'Dyagnosis',

  components: {
    Table
  },

  data: () => ({
    i: 0,
    question: questions[0].question
  }),
  methods: {
    yes() {
      this.i = questions[this.i].yes
      if (this.i === TARGET_INDEX) {
        (this as any).$router.push('target');
      }
      this.question = questions[this.i].question;
    },
    no() {
      this.i = questions[this.i].no
      if (this.i === NOT_TARGET_INDEX) {
        (this as any).$router.push('not-target');
      }
      this.question = questions[this.i].question;
    }
  }
})
</script>

<style scoped>
.q {
  font-family: "Mplus 1p";
  font-size:300%;
  color:#F55257;
  vertical-align: middle;
  font-weight: bold;
}
.question {
  line-height: 1.5em;
}
.question-box {
  color: grey;
}
</style>