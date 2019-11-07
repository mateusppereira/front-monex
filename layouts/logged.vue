<template>
  <div class="logged__layout">
    <Sidebar />
    <div class="content">
      <nuxt />
    </div>
  </div>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  .logged__layout {
    display: flex;
    flex-direction: row;
    min-height: 100vh;
  }
  .content {
    flex: 1;
    background: $background;
    padding: $space-m;
  }
</style>

<script>
import Sidebar from '@/components/sidebar/Sidebar'

export default {
  components: {
    Sidebar
  }
}
</script>
