<template>
  <v-row>
    <!-- <div v-for="" :key="faculty.id"> -->
      <v-col
        v-for="faculty in faculty_members_group_a"
        :key="faculty.id"
        cols="12"
        sm="3"
      >
      <v-card>
        <v-img
          :src="faculty.image"
          height="200px"
        ></v-img>

        <v-card-title>
          {{faculty.title}}
        </v-card-title>

        <v-card-subtitle>
          {{faculty.subtitle}}
        </v-card-subtitle>

        <v-card-actions>
          <v-btn
            color="orange lighten-2"
            text
          >
            More
          </v-btn>

          <v-spacer></v-spacer>

          <v-btn
            icon
            @click="show = !show"
          >
            <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
          </v-btn>
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
            {id: 2, image: "./../../../app/assets/images/alex_wong_headshot.jpg", title: "Alex Wong", "subtitle": " Ballet, Contemporary, Musical Theater", bio: "Alex Wong was born in Canada. In 2000 Alex won two Junior World Titles in Tap and Showdance. Alex won the Audience Choice Award and was a Bronze Medallist in the 2003 Genee International Ballet Competition. In 2004, he became the first Canadian to win the Prix de Lausanne competition in Switzerland. He danced with American Ballet Theatre and was a Principal Soloist with the Miami City Ballet. Alex was a finalist on Season 7 of the FOX hit series 'So You Think You Can Dance' competing for the title of America&apos;s favorite dancer but was sidelined by an injury halfway through the season. Later that year, both pieces Alex danced on So You Think You Can Dance choreographed by Mia Michaels and Tabatha & Napolean both won Emmy Awards. Alex has returned as an All Star for many seasons on SYTYCD and several of his pieces he danced in received Emmy nominations or wins. Alex was also a Semi Finalist on American Idol Season 11 and in 2011, Alex had his Broadway debut, playing the role of 'Sniper' in the Original Broadway Cast of the Disney musical 'Newsies' which won two Tony Awards and received six other Tony nominations. Alex also won the ACCA Award for Outstanding Original Chorus for the Broadway 2011-2012 season and the album was nominated for a Grammy Award. Alex&apos;s recent notable credits include Dancing with the Stars, Taylor Swift, Jonas Brothers, Ariana Grande, Dolly Partons’ “Christmas on the Square, Mariah Carey’s Christmas Special, Rebel Wilson’s “Isn’t It Romantic”, Starz TV series drama 'Flesh & Bone' playing the role of 'Kim', NBC's Peter Pan, Ted 2, Glee, The King & I on Broadway, CW's 'Crazy Ex Girlfriend', Drunk History, The Voice, SNL, The Daily Show, James Corden, Fosse/Verdon, the Billboard Awards with Paula Abdul, The Oscars, Little Mermaid Live, and he has been the cover star of Dance Magazine, Dance Spirit and many others. Alex was a part of the hit movie musical 'The Greatest Showman' starring Hugh Jackman, Zac Efron, Zendaya and Michelle Williams playing the role of 'Oriental Oddity'. He is also part of the film adaptation movie musical “In the Heights” set to premiere in the summer. Alex continues to create content on his social media pages IG and TikTok amassing over 1.5 million followers and is also traveling around the world headlining dance conventions"},
            {id: 3, image: "./../../../app/assets/images/casa_headshot.jpg", title: "Casa Grant", subtitle: "Jazz Funk, Hip Hop, Jazz", bio: "Casa Grant is a Southwest explosion that comes to you in all forms entertainment. While his main artistic focus is dance and everything inclusive, he also dabbles in the world of acting, the behind the scenes with creative directing and also artistic coaching. Casa's first taste of professional work when started the day he was born, where he was featured in the local Ft. Hood news paper for being “unexpectedly delivered” by his father who was a soldier in the US Army. Since then, he has grown into professionally represented all around artist and entertainer in the entertain industry in Los Angeles California. In the last decade of his ongoing career, he has been hired to do several print ads, performed nationally and internationally in professional shows, danced in films and television with some of your favorite actors; artists; and athletes, and has recently transitioned into acting by way of stand in and currently hosts/emcees in the competitive dance industry for Revolution Talent.  When it comes to dance Casa is constantly training and working to perfect his craft so that he can continue to be highly sought after within his industry, and also so he can bring his best knowledge to the next generations of dance hopefuls. As a dancer most of Casas training took place in Hawaii (24/7 & Nix Dance) and Arizona (LimeLight Pro. & Dance Fusion), he was fortunate to take training from elite teachers and choreographers in California as well. As a teacher, Casa has been fortunate enough to train dancers across the world, some of which have continued to dance professionally in the commercial and concert industries. He really enjoys “transitioning” dancers to a point where they can comfortably join a higher level class and even go into the professional world and now what to do/expect. He helps artists feel more confident in their foundational and performance skills. He provides a self accountable environment that allows dancers of any level to bravely grow into their best through foundation training, movement exploration, and choreography. His joy as a mentor comes from seeing his students grow into the best versions of themselves while they are training with him. Although Casa is a well rounded, versatile dancer, he focuses on teaching mainly Jazz and Hip Hop (all varieties), and also includes Lyrical and Contemporary. While holding students accountable for their own growth, he also nurtures and supports them, in every class. Although Casa prefers live interaction, this pandemic has allowed him to grow in his technological and social media presence by providing zoom classes as those became his temporary outlet. He started teaching online classes and doing private lessons for studios in New York, Louisiana, Florida and California.  While his career has given him many opportunities thus far, he does looks forward to what his future brings him, while he gratefully works on staying focused on what the present, presents to him"},
            {id: 4, image: "./../../../app/assets/images/andrew_brader_headshot.jpg", title: "Andrew Brader", subtitle: " Ballet, Contemporary ", bio: "Andrew Brader was born and raised in New Orleans, LA, and began his training with Karen Hebert and at the New Orleans Center for the Creative Arts with Jan Miller and Miguel Lopez. He attended The Harid Conservatory in Boca Raton, FL, on full scholarship and the Jacqueline Kennedy Onassis School at American Ballet Theatre, also studying privately with Susan Jaffe. He was invited to join ABT as an apprentice, dancing with the company at The Metropolitan Opera House at Lincoln Center, and then joined the Houston Ballet performing in ballets by Stanton Welch, Ben Stevenson, John Cranko, Kenneth MacMillan and George Balanchine. He danced with the Los Angeles Ballet for four seasons performing principal roles in George Balanchine's Agon, The Four Temperaments, Stravinsky Violin Concerto, Serenade, Kammermuzik No.2, Lar Lubovich's The Evangelist, Bournonville's Napoli Pas de Six and original works by Josie Walsh, Sonya Tayeh, Olivier Wevers, and Melissa Barak's Scrying presented as the first dance installation performed at NYC's Modern Museum of Art. Andrew was a Lester Horton Award nominee for Outstanding Achievement in Performance and winner of the Habich Corey Award for Emerging Choreographer. He spent two seasons with BalletMet Columbus before joining Stadt Theater Chemnitz as a Soloist in Chemnitz, Germany.  Andrew danced with Complexions Contemporary Ballet from 2014-2018 under the direction of Dwight Rhoden and Desmond Richardson and has taught for Complexions’ intensives, as well as Joffrey Ballet School summer intensives. Andrew has performed on the stages of The Metropolitan Opera House NYC, The Kennedy Center DC, The Music Center Los Angeles, The Tel-Aviv Opera House Israel, The Odessa Opera Ukraine, The Mikhailovsky Theater in St. Petersburg and The Kremlin Palace Moscow, Russia. He’s danced alongside international dance stars in the galas of Laguna Dance Festival, World Ballet Competition, City Dance Gala DC, The Golden Swan Gala, and The Monterrey International Ballet Gala Mexico. Andrew has appeared in music videos for Jill Scott and music legend Nile Rodgers and has also worked as a model for Los Angeles Fashion Week, New York Fashion Week, and New York Men’s Fashion Week."}        
      ]
    })
  }
</script>

