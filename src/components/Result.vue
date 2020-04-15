<template>
  <v-container>
    <v-row>
      <v-col cols="12" class="mt-3 text-center">
        <h3 class="result mb-5">診断結果</h3>
        <p v-html="isTarget ? messageForTarget : messageForNotTarget"></p>
        <p class="causion">※この診断結果は給付の対象かどうかを保証するものではありません。あくまで参考情報としてご利用ください。</p>
        <v-btn @click="$router.push('/')" rounded color="primary" dark>もう一度診断</v-btn>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  props: {
    isTarget: Boolean
  },
  data: () => ({
    messageForTarget: 'おめでとうございます！<br>あなたは30万円現金給付の対象者である可能性があります。<br>オンラインまたは郵便で申請してみましょう。',
    messageForNotTarget: '残念ですが、あなたは30万円現金給付の対象者ではない可能性があります。'
  })
})
</script>

<style scoped>
.result {
  color: #6cb4e4;
  border-bottom: dashed 2px #6cb4e4;
}
.causion {
  color: grey;
  font-size: 12px;
}
</style>