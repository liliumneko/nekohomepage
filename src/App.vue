
<template>
  <h1 style="margin-top: 10px;">NekoHome-Servers</h1>
  <a v-for="data in datas" :key="data.name" class="card" :href="data.path" target="_blank">
    <div class="card-icon">
      <img :alt="data.name" :src="data.img">
    </div>
    <div class="card-text">
      <p class="text-title">{{ data.name }}</p>
      <p class="text-info">{{ data.info }}</p>
    </div>
  </a>
  <div style="margin: 10px;"></div>
</template>
<script lang="ts" setup>
import { ref } from 'vue';
import data from './data/data'

const datas = ref(data)
</script>
<style scoped>
.card {
  height: 100px;
  box-sizing: border-box;
  width: 100%;
  max-width: 540px;
  min-width: 300px;
  background-color: rgb(255, 255, 255);
  border-radius: 1.4rem;
  padding: 20px 28px;
  margin-top: 1.3rem;
  display: flex;
  align-items: center;
  border: 3px solid;
  border-color: black;
}

img {
  width: 100%;
}

.card-icon {
  width: 60px;
  height: 60px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card-text {
  margin-left: 30px;
  display: flex;
  flex-direction: column;
  line-height: 1.3;
  text-align: left;
}

.text-title {
  color: rgb(7, 17, 37);
  font-weight: 800;
  font-size: 20px;
}

.text-info {
  color: rgb(0, 0, 0);
  font-weight: 300;
  font-size: 18px;
}</style>
