<template>
  <div :class="`sidebar ${isCollapsed && 'sidebar--collapsed'}`">
    <div class="sidebar__toggle" @click="toggleSidebar"></div>
    <div class="sidebar__header">
      <h1>$MONEX</h1>
    </div>
    <div class="sidebar__options">
      <nuxt-link
        v-for="(route, index) in routes"
        :key="index"
        :to="route.path"
        :class="`sidebar__options__item ${route.path === $nuxt.$route.path && 'sidebar__options__item--selected'}`"
      >
        {{ route.name }}
      </nuxt-link>
    </div>
    <div class="sidebar__logout">
    </div>
  </div>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .sidebar {
    position: relative;
    display: flex;
    flex-direction: column;

    width: 23.2rem;

    background: $primary;

    transition: all .2s;
  }

  .sidebar--collapsed {
    width: 0;
    & *:not(.triangle) {
      opacity: 0;
    }
  }

  .sidebar__toggle {
    opacity: 1 !important;
    position: absolute;
    height: 24px;
    width: 24px;
    right: -24px;

    display: flex;
    justify-content: center;
    align-items: center;

    background: $secondary;
  }

  .triangle {
    background: $white;
    width: 16px;
    height: 16px;

    &--right {
      clip-path: polygon(0% 0%, 100% 50%, 0% 100%);
    }
    &--left {
      clip-path: polygon(0% 50%, 100% 0%, 100% 100%);
    }
  }

  .sidebar__header {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    height: 10rem;
    padding: .5rem 0;

    color: $black;
    font-size: 2.4rem
  }

  .sidebar__options {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    padding: .5rem 0;
    line-height: 4.2rem;

    &__item {
      font-size: 1.6rem;
      color: $white;
      padding-left: 1rem;

      &:hover {
        border-left: .5rem solid $secondary;
        // background: $primary-lighter;
        color: $white;
        cursor: pointer;
      }

      &--selected {
        border-left: .5rem solid $secondary;
        background: $primary-lighter;
        color: $black;
        cursor: pointer;
      }
    }
  }

  .sidebar__logout {
    padding: 0 .2rem;
  }
</style>

<script>
export default {
  data () {
    return {
      sidebarCollapsed: false,
      currentRoute: this.$nuxt.$route.path,
      routes: [
        {
          name: 'Dashboard',
          path: '/app/dashboard'
        },
        {
          name: 'Mensagens',
          path: '/app/messages'
        },
        {
          name: 'Calendário',
          path: '/app/calendar'
        },
        {
          name: 'Fundamentos',
          path: '/app/fundamentals'
        },
        {
          name: 'StyleGuide',
          path: '/app/styleguide'
        }
      ]
    }
  },
  computed: {
    isCollapsed () {
      return this.sidebarCollapsed
    }
  },
  methods: {
    toggleSidebar () {
      this.sidebarCollapsed = !this.sidebarCollapsed
    }
  }
}
</script>
