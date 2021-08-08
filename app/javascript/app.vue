<template>
  <div id="app">
    <!-- <v-app>
      <p>{{ message }}</p>
    </v-app> -->
    <v-app-bar dense color="#164647" dark>
      <template v-slot:extension>
        <v-tabs>
          <v-tab>Innovative Fusion</v-tab>
          <v-tab>About</v-tab>
          <v-tab>Faculty</v-tab>
          <v-tab>Assistant Program</v-tab>
          <v-tab>Booking Info</v-tab>
          <v-tab>Merchandise</v-tab>
          <v-tab>Contact Info</v-tab>
        </v-tabs>
      </template>
    </v-app-bar>

    <v-container
      class="spacing-playground pa-6"
      fluid
    >
      <faculty/>
    </v-container>
  </div>
</template>


<script>
import Vue from 'vue'
import Vuetify from "vuetify"
import "vuetify/dist/vuetify.min.css";
import 'material-design-icons'
import faculty from "./packs/components/faculty/faculty_members.vue";

Vue.use(Vuetify);

export default {
  data: function() {
    return {
      message: "Hello Vue!"
    };
  },
  components: {
    faculty: faculty,
    
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
