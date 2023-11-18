<template>
  <tr>
    <td>{{ film.film_id }}</td>
    <td>{{ film.film_name }}</td>
    <td>{{ film.genres }}</td>
    <td>{{ film.watch_count }}</td>
    <td>{{ film.rate }}</td>
    <td>{{ film.country_of_origin }}</td>
    <td>{{ film.age_limit }}</td>
    <td>{{ localeDate(film.released_data) }}</td>
  </tr>
</template>

<script setup>
import localeDate from '../utils/localeDate'
const { film } = defineProps(['film'])
</script>

<style lang="scss" scoped></style>