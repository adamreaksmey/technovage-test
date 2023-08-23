<template>
  <div class="d-flex" id="wrapper">
    <div class="bg-light border-right" id="sidebar-wrapper" :class="{ open: isSidebarVisible }">
      <div class="sidebar-heading">Dashboard</div>
      <div class="list-group list-group-flush">
        <router-link class="list-group-item list-group-item-action bg-light" to="/home"
          >Home</router-link
        >
        <router-link class="list-group-item list-group-item-action bg-light" to="/about"
          >About</router-link
        >
        <router-link class="list-group-item list-group-item-action bg-light" to="/services"
          >Services</router-link
        >
        <router-link class="list-group-item list-group-item-action bg-light" to="/contact"
          >Contact</router-link
        >
        <router-link class="list-group-item list-group-item-action bg-light" to="/logout"
          >Log out</router-link
        >
      </div>
    </div>
    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn" id="menu-toggle" @click="toggleSidebar">
          <img src="../icon/right-arrow.png" />
        </button>
      </nav>
      <div class="container-fluid">
        <slot></slot>
      </div>
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
