<template>
  <div class="mx-card company-card__container">
    <div class="company-card__header">
      <img src="~/assets/images/company.png" />
      <div class="header__infos">
        <h4 class="mx-title mx-title--s">{{ company.name }}</h4>
        <span class="mx-text">{{ company.cod }}</span>
        <span class="mx-text">CNPJ: {{ company.cnpj }}</span>
      </div>
    </div>
    <div class="company-card__info-row">
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Fundação</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ company.fundation }}</span>
      </div>
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Tipo de segmento</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ governance.segment_type }}</span>
      </div>
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Área</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ company.area }}</span>
      </div>
    </div>
    <div class="company-card__info-row">
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Sócio majoritário</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ governance.major_partner }}</span>
        <span class="mx-text mx-text--bold mx-text--success">{{ governance.major_percent_on }} ON</span>
      </div>
    </div>
    <div class="company-card__info-row">
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Participação governo</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ governance.govern_on }}</span>
      </div>
    </div>
    <div class="company-card__info-row">
      <div class="company-card__info">
        <span class="mx-text mx-text--bold">Em uma linha</span>
        <span class="mx-text mx-text--gray mx-text--l">{{ company.caracts }}</span>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
  .company-card__container {
    flex: 1;
    min-width: 480px;
    // max-width: 540px;
    width: 20%;
    min-height: 320px;
    margin: 8px 8px;

    display: flex;
    flex-direction: column;
  }

  .company-card__header {
    display: flex;
    flex-direction: row;
    margin-bottom: 24px;

    img {
      height: 64px;
    }
  }

  .header__infos {
    display: flex;
    flex-direction: column;
  }

  .company-card__info-row {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    margin-bottom: 16px;
  }

  .company-card__info {
    display: flex;
    flex-direction: column;

    & + & {
      margin-left: 24px;
    }
  }
</style>

<script>
export default {
  props: {
    company: {
      type: Object,
      required: true
    },
    governance: {
      type: Object,
      required: true
    }
  }
}
</script>
