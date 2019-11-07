<template>
  <div class="fundamentals__container">
    <h1 class="mx-title mx-title--l">Análise Fundamentalista</h1>
    <div class="fundamentals__form" >
      <select class="mx-select" v-model="filteredValue">
        <option
          v-for="name in companyNames"
          :key="name"
        >{{ name }}</option>
      </select>
      <!-- <vSelect
        class="mx-select"
        placeholder="Busque pelo nome da instituição"
        :multiple="true"
        :options="companyNames"
      ></vSelect> -->
    </div>
    <div class="fundamentals__cards">
      <CompanyCard
        v-for="{ company, governance } in institutions"
        :key="company.code"
        :company="company"
        :governance="governance"
      />
    </div>
    <span
      v-if="institutions.length === 0"
      class="mx-text mx-text--l mx-text--center"
    >Nenhum item para exibir</span>
  </div>
</template>

<style lang="scss" scoped>
  .fundamentals__container {
    display: flex;
    flex-direction: column;
  }

  .fundamentals__form {
    display: flex;
    flex-direction: column;
    width: 456px;
    height: 56px;
  }

  .fundamentals__cards {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    margin: 0 -8px;
  }
</style>

<script>
// import vSelect from 'vue-select'
import institutions from '~/services/fundamentals'
import CompanyCard from '~/components/fundamentals/CompanyCard'

export default {
  layout: 'logged',
  components: {
    CompanyCard
    // vSelect
  },
  data: () => {
    return {
      institutions,
      companyNames: institutions.map(({ company: { name } }) => name),
      filteredValue: ''
    }
  },
  watch: {
    filteredValue: 'fetchInstitutions'
  },
  methods: {
    fetchInstitutions (companyNames) {
      if (!companyNames.length) {
        this.institutions = []
        return
      }
      this.institutions = institutions
        .filter(({ company: { name } }) => companyNames.includes(name))
    }
  }
}
</script>

<style>

</style>
