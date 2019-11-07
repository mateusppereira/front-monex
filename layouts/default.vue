<template>
  <div>
    <Sprite />
    <Header />
    <nuxt />
  </div>
</template>

<style>
</style>

<script>
import Vue from 'vue'
import Header from '@/components/header/Header'
import Sprite from '@/static/images/icons/sprite.svg'

export default {
  components: {
    Header,
    Sprite
  },
  created () {
    Vue.config.errorHandler = undefined
  }
}
</script>
