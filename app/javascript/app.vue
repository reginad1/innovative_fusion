<template>
  <v-card>
    <v-toolbar
      color="cyan"
      dark
      flat
    >
      <template v-slot:extension>
        <v-tabs
          v-model="tabs"
          centered
        >
          <v-tab>About</v-tab>
          <v-tab>Faculty</v-tab>
          <v-tab>Booking Info</v-tab>
        </v-tabs>
      </template>
    </v-toolbar>

    <v-tabs-items v-model="tabs">
      <v-tab-item>
        <v-card flat>
          <about/>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <faculty/>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <bookingInfo/>
        </v-card>
      </v-tab-item>
    </v-tabs-items>
  </v-card>
</template>


<script>
import Vue from 'vue'
import Vuetify from "vuetify"
import VueRouter from 'vue-router'
import "vuetify/dist/vuetify.min.css";
import 'material-design-icons'
import about from "./packs/components/about.vue";
import bookingInfo from "./packs/components/booking_info.vue";
import home from "./packs/components/home.vue";
import faculty from "./packs/components/faculty/faculty_members.vue";

Vue.use(Vuetify);

export default {
  data () {
      return {
        tabs: null,
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      }
  },
  components: {
    about: about,
    bookingInfo: bookingInfo, 
    home: home,
    faculty: faculty
  }
};
</script>

<style scoped>
p {
  text-align: center;
}
</style>
