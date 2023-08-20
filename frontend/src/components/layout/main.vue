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

<style>
.sidebar {
  position: fixed;
  top: 0;
  left: -200px;
  width: 200px;
  height: 100vh;
  background-color: #f8f9fa;
  transition: left 0.3s ease-in-out;
}

.visible {
  left: 0;
}

ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

li {
  margin-bottom: 10px;
}

a {
  text-decoration: none;
  color: #000;
  display: block;
  padding: 10px;
  transition: background-color 0.3s ease-in-out;
}

a:hover {
  background-color: #e9ecef;
}

.sidebar-toggle {
  position: absolute;
  top: 10px;
  left: 10px;
  z-index: 999;
  cursor: pointer;
}

.arrow {
  width: 20px;
  height: 20px;
  background-color: #000;
  transition: transform 0.3s ease-in-out;
}

.arrow-open {
  transform: translate(200px) rotate(180deg);
}
</style>
