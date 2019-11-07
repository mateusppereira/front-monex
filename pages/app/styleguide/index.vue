<template>
  <div class="container">
    <div class="mx-card">
      <h1 class="mx-text mx-title">Lorem ipsum dolor sit amet.</h1>
      <span class="mx-text">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper ligula ut sem elementum hendrerit. Sed tellus est, dictum sed.
      </span>
    </div>
    <div class="mx-card">
      <input class="mx-input" type="text" placeholder="Nosso input" />
      <input class="mx-input" type="date" placeholder="Nosso input" />
      <select class="mx-select">
        <option>Nosso select</option>
        <option>option</option>
        <option>option</option>
        <option>option</option>
      </select>
    </div>
    <div class="mx-card">
      <button class="mx-button mx-button--l">Grande</button>
      <button class="mx-button">Normal</button>
      <button class="mx-button mx-button--s">Pequeno</button>
      <button class="mx-button mx-button--secondary mx-button--l">Secondary</button>
      <button class="mx-button mx-button--secondary">Secondary</button>
      <button class="mx-button mx-button--secondary mx-button--s">Secondary</button>
      <button class="mx-button mx-button--icon-left">
        <span>&#128521;</span>
        With icon
      </button>
    </div>
  </div>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .container {
    display: flex;
    flex-direction: column;

    & .mx-card {
      display: flex;
      align-items: center;
    }
  }
</style>

<script>
export default {
  layout: 'logged'
}
</script>
