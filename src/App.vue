<template>
  <v-app>
    <v-content>
      <header id="commonHeader">
        <section id="flowsHead">あなたは30万円給付対象者！？</section>
        <section id="flows">Yes/No診断</section>
      </header>
      <router-view></router-view>
    </v-content>
  </v-app>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
  name: 'App',
});
</script>

<style scoped>
#commonHeader {
  position: relative;
  margin: 0 auto;
  max-height: 210px;
  z-index: 100000;
  
  color: #5391BA;
  font-weight: bold;
  text-align: center;
  padding: 0.25em;
  border-top: solid 2px #6cb4e4;
  border-bottom: solid 2px #6cb4e4;
  background: -webkit-repeating-linear-gradient(-45deg, #f0f8ff, #f0f8ff 3px,#e9f4ff 3px, #e9f4ff 7px);
  background: repeating-linear-gradient(-45deg, #f0f8ff, #f0f8ff 3px,#e9f4ff 3px, #e9f4ff 7px);
}
#flows {
  margin: 0 auto;
  max-height: 170px;
  position: relative;
  
  font-size: 320%;
  text-align: center;
  padding:5px 5px 30px;
}
#flowsHead{
  font-size: 100%;
  text-align: center;
  padding-top: 30px;
  padding:30px 5px 5px;
}
</style>