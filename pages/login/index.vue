<template>
  <section class="container">
    <div class="login-box">
      <h4 class="mx-title">Informe suas credenciais</h4>
      <form class="login-box__form">
        <input class="mx-input" placeholder="email">
        <input class="mx-input" placeholder="senha">
      </form>
      <div class="login-box__buttons">
        <button class="mx-button mx-button--secondary mx-button--s">
          Cadastrar-se
        </button>
        <router-link to="/app">
          <button class="mx-button">
            Fazer login
          </button>
        </router-link>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .container {
    height: calc(100vh - 70px);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background: $background;
  }

  .login-box {
    min-width: 350px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: $space-m;

    border: 1px solid #ccc;
    border-radius: $border-radius;
    background: $white;

    &__form {
      display: flex;
      flex-direction: column;
    }
    &__buttons {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
    }
  }
</style>

<script>
export default {
}
</script>

<style>

</style>
