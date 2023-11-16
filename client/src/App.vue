<script setup>
import { ref, onMounted } from 'vue';

const el = ref()

onMounted(() => {
  console.log(el.value)
}) 
</script>

<template>
  <div ref="el">
    app started
  </div>
</template>

<style scoped></style>
