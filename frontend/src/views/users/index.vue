<template>
  <div>
    <UsersData :users="users"/>
    <vue-awesome-paginate
      :total-items="50"
      :items-per-page="5"
      :max-pages-shown="5"
      v-model="currentPage"
      :on-click="onPageChange"
      :show-breakpoint-buttons="false"
      :show-jump-buttons="true"
    />
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import UsersData from '@/components/users/Table.vue'
export default {
  name: 'UserTable',
  components: {
    UsersData
  },
  data() {
    return {
      users: [
        {
          name: 'adam',
          email: 'adaminiature@gmail.com',
          api_token: 'token testing',
          custom: 'custom field'
        }
      ],
      currentPage: 1
    }
  },
  mounted() {
    this.fetchUsersData()
  },
  computed: {
    ...mapGetters({ userInfo: 'user/userInfo' })
  },
  methods: {
    ...mapActions({ registeredUsers: 'user/registeredUsers' }),
    async fetchUsersData() {
      await this.registeredUsers(1)
      return (this.users = this.userInfo)
    },
    async onPageChange(page) {
      await this.registeredUsers(page)
      return (this.users = this.userInfo)
    }
  }
}
</script>

<style></style>
