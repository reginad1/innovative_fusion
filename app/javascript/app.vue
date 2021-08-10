<template>
  <v-card>
    <v-toolbar
      color="purple"
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
          <v-card-text>
            <p>
              Fully customizable in studio convention! Innovative Fusion is made up of 12 faculty members that are some of the industry’s top working professionals. Each studio will have the opportunity to choose 4 of our outstanding faculty members, pick a 2 or 3 day event, tell us the amount of students attending, then we will calculate your total cost per dancer and provide a fully customized weekend just for your studio
            </p><br>
            <p>
              We handle everything! You pick a weekend that works best for your studio, choose your faculty, then we book the faculty, hotels and transportation so all you have to do is sit back and relax while enjoying this experience for you and your students!
            </p><br>
            <p>
              We will provide your students with the best training, motivation, education and care all in your studio. All of the Innovative Fusion faculty is dedicated to bringing the very best to your students in a positive, inspirational and educational manner. This opportunity provides your students training to help them excel to the next level, and learn from our industry experts all in the comfort of your own studio!
            </p><br>
            <p>
              Innovative fusion is excited to offer a variety of classes! Ballet, Jazz, Jazz funk, Hip Hop, Contemporary, Lyrical, Tap, Musical Theater, Ballroom, Acro, Stretch, Improv, Heels, Technique, On Camera Training, Musicality for Dancers as well as the option to have a LIVE VOCALIST in your contemporary or lyrical class! 
            </p><br>
            <p>
              In addition to the convention classes, we will also offer private lessons, competition routine critiques and choreography for an additional cost.
            </p><br>
            <p>
              At the end of each event, we will allow time for photos with the faculty.
            </p><br>
            <p>
              Contact us today to bring this experience to your studio
            </p>
          </v-card-text>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <faculty/>
        </v-card>
      </v-tab-item>
      <v-tab-item>
        <v-card flat>
          <v-card-title class="text-h5">
            An even better title
          </v-card-title>
          <v-card-text>
            <p>
              Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Sed hendrerit. Maecenas malesuada. Vestibulum ullamcorper mauris at ligula. Proin faucibus arcu quis ante.
            </p>

            <p class="mb-0">
              Etiam vitae tortor. Curabitur ullamcorper ultricies nisi. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Aliquam lobortis. Suspendisse potenti.
            </p>
          </v-card-text>
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
import home from "./packs/components/home.vue";
import faculty from "./packs/components/faculty/faculty_members.vue";

Vue.use(Vuetify);
Vue.use(VueRouter);

const routes = [
  {
    path: '/about',
    component: about
  },
  {
    path: '/home',
    component: home
  },
  {
    path: '/faculty',
    component: faculty
  },
]

const router = new VueRouter({
  mode: 'history',
  routes
})

new Vue({
  render: h => h(App), // mount the base component
  router
}).$mount('#app')

export default {
  data () {
      return {
        tabs: null,
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      }
  },
  components: {
    about: about,
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
