<template>
  <v-row>
    <!-- <div v-for="" :key="faculty.id"> -->
      <v-col
        v-for="faculty in faculty_members_group_a"
        :key="faculty.id"
        cols="12"
        sm="3"
      >
      <v-card height="100%">
          <v-img
            :src="faculty.image"
            height="200px"
          ></v-img>
        
          <v-card-title class="justify-center">
            {{faculty.title}}
          </v-card-title>

          <v-card-subtitle height="150px;">
            {{faculty.subtitle}}
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
                {{faculty.bio}}
              </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
  export default {
    data: () => ({
      show: false,
      faculty_members_group_a: [
            {id: 1, image: "./../../../app/assets/images/maryann_headshot.jpg", title: "Maryann DeAngelis", subtitle: "Lyrical, Contemporary, Improv, Technique, Acro", bio: "Maryann has been an instructor for over 23 years in jazz, tap, lyrical, contemporary, stretch and strength, tumbling and acrobatics at many different studios all over the United States. She is certified in Acrobatic Arts. Maryann has worked at Walt Disney World, Universal Studios, and Capones, just to name a few! She appeared in the American Idol movie 'From Justin to Kelly' and also in a celebration for Kelly Clarkson in Texas, performed at Superbowl XXXVII with Styx and Sting and choreographed for Kat DeLuna for a concert in Florida. Maryann has also been a judge/convention instructor for ADA, NTG, VIP, Heat and Bravo. She is on the sub list at Broadway Dance Center in NYC and has worked with the hit TV show Dance Moms at Candy Apple's Dance Center. She also occasionally works with Olympic Ice Skating and Gymnastic hopefuls on choreography. Maryann has been collaborating with musical artists to offer special contemporary classes with a live vocalist, musicality for dancers and recently choreographed a music video for an upcoming singer in Nashville. Her choreography has won top honors at Regional and National competitions for the past 20 years. Maryann's style & positive energy have made her classes very popular wherever she goes!"},
            {id: 2, image: "", title: "Marissa Milele", subtitle: "Hip Hop, Jazz, Jazz Funk, Contemporary, On Camera Training", bio: "Marissa is from Nashville, Tennessee. She began dancing at the early age of four years old, trained in most genres of dance along with power tumble and trampoline. Marissa was on the hit TV show, “So You Think You Can Dance”, season 12 as one of 5 girls on “stage” and mentored by Travis Wall. Marissa was a part of the “So You Think You Can Dance” – seventy-city tour in 2015. In 2017, Marissa danced for Demi Lovato for “Good Morning America , BillBoard Awards and the VMA’s, danced for Ricky Martin on his “All In” Vegas Residency tour. Additionally that year danced for Charlie Puth on The Voice. She’s participated as an NFL cheerleader for the Tennessee Titans in 2014 and 2015. She’s been in several music videos and commercials – for Janelle Monae, Jerrod Neimann, American Pickers and Top 40 Billboard to mention a few. Marissa has appeared on the show “Nashville” as a dancer. She has shared the stage with such artists as Kenny Chesney, Thomas Rhett, Jennifer Nettles, with live performances – CMA Awards, CMA Country Christmas, VMA’s, ACM Awards, SYTYCD live tour, Harley Davidson Industrial, MAC cosmetics and appeared in the recent movie, “Alvin and the Chipmunks 4 and Marvel.  She’s made several appearances on the Netflix show “Insatiable”. Marissa is not only an active working dancer but also the co-founder of the Milele Academy, L.L.C. where she’s won many choreography awards. She choreographs for studios all over the United States and is the exclusive choreographer for the Tennessee Titans Cheerleaders. She recently has choreographed for artist Cam Country, Caanan Cox and Dolly Parton. Marissa enjoys living her dream and is very passionate about helping others make their dreams come true."},  
            {id: 3, image: "./../../../app/assets/images/alex_wong_headshot.jpg", title: "Alex Wong", subtitle: " Ballet, Contemporary, Musical Theater", bio: "Alex Wong was born in Canada. In 2000 Alex won two Junior World Titles in Tap and Showdance. Alex won the Audience Choice Award and was a Bronze Medallist in the 2003 Genee International Ballet Competition. In 2004, he became the first Canadian to win the Prix de Lausanne competition in Switzerland. He danced with American Ballet Theatre and was a Principal Soloist with the Miami City Ballet. Alex was a finalist on Season 7 of the FOX hit series 'So You Think You Can Dance' competing for the title of America&apos;s favorite dancer but was sidelined by an injury halfway through the season. Later that year, both pieces Alex danced on So You Think You Can Dance choreographed by Mia Michaels and Tabatha & Napolean both won Emmy Awards. Alex has returned as an All Star for many seasons on SYTYCD and several of his pieces he danced in received Emmy nominations or wins. Alex was also a Semi Finalist on American Idol Season 11 and in 2011, Alex had his Broadway debut, playing the role of 'Sniper' in the Original Broadway Cast of the Disney musical 'Newsies' which won two Tony Awards and received six other Tony nominations. Alex also won the ACCA Award for Outstanding Original Chorus for the Broadway 2011-2012 season and the album was nominated for a Grammy Award. Alex&apos;s recent notable credits include Dancing with the Stars, Taylor Swift, Jonas Brothers, Ariana Grande, Dolly Partons’ “Christmas on the Square, Mariah Carey’s Christmas Special, Rebel Wilson’s “Isn’t It Romantic”, Starz TV series drama 'Flesh & Bone' playing the role of 'Kim', NBC's Peter Pan, Ted 2, Glee, The King & I on Broadway, CW's 'Crazy Ex Girlfriend', Drunk History, The Voice, SNL, The Daily Show, James Corden, Fosse/Verdon, the Billboard Awards with Paula Abdul, The Oscars, Little Mermaid Live, and he has been the cover star of Dance Magazine, Dance Spirit and many others. Alex was a part of the hit movie musical 'The Greatest Showman' starring Hugh Jackman, Zac Efron, Zendaya and Michelle Williams playing the role of 'Oriental Oddity'. He is also part of the film adaptation movie musical “In the Heights” set to premiere in the summer. Alex continues to create content on his social media pages IG and TikTok amassing over 1.5 million followers and is also traveling around the world headlining dance conventions"},
            {id: 4, image: "./../../../app/assets/images/jakob_headshot.jpg", title: "Jakob Karr", subtitle: "Jazz, Contemporary, Musical Theater, Jazz Progressions, Technique", bio: "Originally from Orlando, Florida, Jakob had the pleasure of growing up around theme parks and watching dancers from a very young age. At twelve years old he began dancing and the rest is history! He has been fortunate enough to perform all over the country as well as most of Europe, Australia, Japan and India. Some of his credits include: CATS on Broadway (Mistoffelees Understudy); Cirque Du Soleil’s VOLTA; So You Think You Can Dance Season 6 - Runner Up; The RADIO CITY New York Spectacular (Mia Michaels); Rock the Ballet; VIVA ELVIS by Cirque Du Soleil; Kiss Me Kate at Barrington Stage; Working at City Center ENCORES; The 82nd Annual Academy Awards; America’s Got Talent; GLEE; Company XIV Jakob recently directed and choreographed his first full-length show, “Ain’t Done Bad” for the Orlando Fringe Festival where he took home the award for “BEST SHOW.”"}               
      ]
    }),
    methods: {
      expandCard: function(faculty_id){
        console.log(faculty_id)
      }
    }
  }
</script>

