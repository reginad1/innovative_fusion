<template>
  <v-row>
    <v-col cols="12" sm="2"></v-col>
    <v-col
        cols="12"
        sm="4"
      >
        <v-img
          :src="logo"
          
        ></v-img>
    </v-col>
    <v-col
        cols="12"
        sm="3"
      >
      <v-card height="100%">
          <v-img
            :src="maryannHeadshot"
            height="300px"
          ></v-img>
        
          <v-card-title class="justify-center">
            Maryann DeAngelis
          </v-card-title>

          <v-card-subtitle height="150px;">
            Lyrical, Contemporary, Improv, Technique, Acro
          </v-card-subtitle>

          <v-card-actions style="float:right;"> 
            <div>
              <v-btn
                icon
                @click="expandCard(faculty.id)"
              >
                <span class="material-icons">expand_more</span>
              </v-btn>
            </div>
          </v-card-actions>


          <v-expand-transition>
            <div v-show="show">
              <v-divider></v-divider>

              <v-card-text>
                Maryann has been an instructor for over 23 years in jazz, tap, lyrical, contemporary, stretch and strength, tumbling and acrobatics at many different studios all over the United States. She is certified in Acrobatic Arts. Maryann has worked at Walt Disney World, Universal Studios, and Capones, just to name a few! She appeared in the American Idol movie 'From Justin to Kelly' and also in a celebration for Kelly Clarkson in Texas, performed at Superbowl XXXVII with Styx and Sting and choreographed for Kat DeLuna for a concert in Florida. Maryann has also been a judge/convention instructor for ADA, NTG, VIP, Heat and Bravo. She is on the sub list at Broadway Dance Center in NYC and has worked with the hit TV show Dance Moms at Candy Apple's Dance Center. She also occasionally works with Olympic Ice Skating and Gymnastic hopefuls on choreography. Maryann has been collaborating with musical artists to offer special contemporary classes with a live vocalist, musicality for dancers and recently choreographed a music video for an upcoming singer in Nashville. Her choreography has won top honors at Regional and National competitions for the past 20 years. Maryann's style & positive energy have made her classes very popular wherever she goes!
              </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>
    <v-col cols="12" sm="3"></v-col>
  </v-row>
</template>

<script>
  export default {
      data () {
          return {
              logo: require('./images/innovativefusion_logo_lg.jpg'),
              maryannHeadshot: require('./images/maryann_headshot.jpg')
          }
      }
  }
</script>

