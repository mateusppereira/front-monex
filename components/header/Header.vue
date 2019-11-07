<template>
  <div class="header">
    <div class="header__left">
      <img class="header__left__logo" src="https://img.icons8.com/bubbles/2x/money.png">
    </div>
    <div class="header__right">
      <nuxt-link to="/login">
        <button class="mx-button">
          Entrar
        </button>
      </nuxt-link>
    </div>
  </div>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .header {
    display: flex;
    flex-direction: row;
    align-items: center;
    height: 7rem;
    background: $secondary;

    &__left {
      height: 100%;
      flex: 2;
      display: flex;
      align-items: center;
      flex-direction: row;

      &__logo {
        height: 90%;
      }
    }
    &__right {
      flex: 1;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: flex-end;
      margin: $space-s;
    }
  }
</style>

<script>
export default {
}
</script>

<style>

</style>
