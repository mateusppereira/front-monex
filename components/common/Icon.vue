<template>
  <svg
    :class="svgClass"
    :alt="svgAlt"
    @click="$emit('click')"
  >
    <title>{{svgAlt}}</title>
    <use :href="`#${svgName}`" />
  </svg>
</template>

<style lang="scss" scoped>
  @import '@/assets/stylesheets/main';
  svg {
    fill: $primary;
  }

  .icon {
    width: 24px;
    height: 24px;
    color: $primary;
  }
</style>

<script>
export default {
  props: {
    svgClass: {
      type: String,
      required: false,
      default: 'icon'
    },
    svgName: {
      type: String,
      required: true
    },
    svgAlt: {
      type: String,
      required: false,
      default: ''
    }
  }
}
</script>
