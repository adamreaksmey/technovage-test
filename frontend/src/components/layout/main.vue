<template>
  <div>
    <div class="sidebar-toggle" @click="toggleSidebar">
      <div :class="{ 'arrow-open': isSidebarVisible }"><img src="../icon/right-arrow.png" /></div>
    </div>
    <div class="sidebar" :class="{ visible: isSidebarVisible }">
      <ul>
        <li>
          <a href="#">Home</a>
        </li>
        <li>
          <a href="#">About</a>
        </li>
        <li>
          <a href="#">Services</a>
        </li>
        <li>
          <a href="#">Contact</a>
        </li>
      </ul>
    </div>
    <div class="content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MainLayout',
  data() {
    return {
      isSidebarVisible: false
    }
  },
  methods: {
    toggleSidebar() {
      this.isSidebarVisible = !this.isSidebarVisible
    }
  }
}
</script>
