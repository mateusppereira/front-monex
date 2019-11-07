<template>
  <div class="dash__container">
    <div class="mx-card dash__item dash__item--half">
      <div class="mx-card__header">
        <span class="mx-title">Evolutivo da carteira</span>
      </div>
    </div>
    <div class="mx-card dash__item dash__item--half">
      <div class="mx-card__header">
        <span class="mx-title">Comparação com amigos</span>
      </div>
    </div>
    <div class="mx-card dash__item dash__item--2">
      <div class="mx-card__header">
        <span class="mx-title">Medição do quanto de merda o Breno fala</span>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .dash__container {
    flex: 1;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    height: 100%;

    margin: 8px -8px;
  }

  .dash__item {
    margin: 8px 8px;
    width: calc(100% - 16px);

    &--half {
      width: calc(50% - 16px);
    }
  }

</style>

<script>
export default {
  layout: 'logged'
}
</script>

<style>

</style>
