<script setup>
import { onMounted, ref, watchEffect } from 'vue';
import FilmCard from './components/FilmCard.vue';
import api from './axiosClient'
import SortDescSvg from './components/SortDescSvg.vue'
import SortAscSvg from './components/SortAscSvg.vue'

const filmList = ref([])
const users = ref([])
const languages = ref([])
const selectedUser = ref("")
const selectedSubsLanguage = ref("")
const selectedAudioLanguage = ref("")
const genres = ref([])
const selectedGenres = ref([""])
const filmName = ref("")
const sortWatchCountDir = ref("")

const clickSortWatchCountHandler = () => {
  if (sortWatchCountDir.value === "") {
    sortWatchCountDir.value = 'asc'
  } else if (sortWatchCountDir.value === 'asc') {
    sortWatchCountDir.value = "desc"
  } else if (sortWatchCountDir.value === 'desc') {
    sortWatchCountDir.value = ""
  }
}

const generateFilmQueryParams = () => {
  const params = new URLSearchParams();

  if (selectedUser.value) {
    params.append('user_id', selectedUser.value);
  }

  if (selectedSubsLanguage.value) {
    params.append('subs_language_id', selectedSubsLanguage.value);
  }

  if (selectedAudioLanguage.value) {
    params.append('audio_language_id', selectedAudioLanguage.value);
  }

  if (selectedGenres.value.length > 0 && selectedGenres.value[0] !== "") {
    params.append('genres', selectedGenres.value.join(','));
  }

  if (filmName.value) {
    params.append('film_name', filmName.value);
  }

  if (sortWatchCountDir) {
    params.append('watch_count_sort', sortWatchCountDir.value)
  }

  return params.toString();
}

onMounted(() => {
  api
    .get('/users')
    .then(res => users.value = res.data)
    .catch((err) => console.log(err))
  api
    .get('/languages')
    .then(res => languages.value = res.data)
    .catch((err) => console.log(err))
  api
    .get('/genres')
    .then(res => genres.value = res.data)
    .catch((err) => console.log(err))
})

watchEffect(() => {
  const queryParams = generateFilmQueryParams()
  const query = queryParams ? `/films?${queryParams}` : '/films';
  api.get(query)
    .then(res => filmList.value = res.data)
    .catch((err) => console.log(err))
})
</script>

<template>
  <div class="p-5">
    <div class="flex gap-5 items-center">
      <input placeholder="Название фильма" v-model="filmName" class="border p-1 outline-none rounded" type="text" name=""
        id="" />
      <select v-model="selectedUser">
        <option value="">Пользователь</option>
        <option v-for="user of users" :value="String(user.users_id)">{{ user.login }}</option>
      </select>
      <select v-model="selectedSubsLanguage">
        <option value="">Субтитры</option>
        <option v-for="lang of languages" :value="String(lang.languages_id)">{{ lang.lang_name }}</option>
      </select>
      <select v-model="selectedAudioLanguage">
        <option value="">Аудио</option>
        <option v-for="lang of languages" :value="String(lang.languages_id)">{{ lang.lang_name }}</option>
      </select>
      <select class="px-2 outline-none" multiple="true" v-model="selectedGenres">
        <option class="border-b pb-1 last-of-type:border-none last-of-type:pb-0" value="">
          All
        </option>
        <option class="border-b pb-1 last-of-type:border-none last-of-type:pb-0" v-for="genre of genres"
          :value="String(genre.genre_id)">{{ genre.g_name }}</option>
      </select>
    </div>
    <div class="text-neutral-500 text-sm">
      *Сортировка по просмотрам осуществляется нажатием на название столбца "Просмотры"
    </div>
    <table class="mt-5 w-full table-fixed">
      <thead class="border-b">
        <td class="w-10">id</td>
        <td>Название</td>
        <td>Жанр</td>
        <td @click="clickSortWatchCountHandler" class="flex justify-between items-center hover:cursor-pointer">Просмотры
          <SortAscSvg v-if="sortWatchCountDir === 'asc'" />
          <SortDescSvg v-if="sortWatchCountDir === 'desc'" />
        </td>
        <td>Рейтинг</td>
        <td>Страна</td>
        <td>Возраст</td>
        <td>Дата выхода</td>
      </thead>
      <tbody>
        <FilmCard v-for="film in filmList" :film="film" />
      </tbody>
    </table>
  </div>
</template>

<style scoped></style>
