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
          :class="faculty.resizeImage ? 'resizeImage' : ''"
          height="300px"
        ></v-img>

        <v-card-title>
          {{faculty.title}}
        </v-card-title>

        <v-card-subtitle>
          {{faculty.subtitle}}
        </v-card-subtitle>

        <v-card-actions style="float:right;">
          <v-btn
            icon
            @click="show = !show"
          >
            <span class="material-icons">expand_more</span>
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
            {id: 5, image: require('./images/andrew_brader_headshot.jpg'), resizeImage: true, title: "Andrew Brader", subtitle: " Ballet, Contemporary ", bio: "Andrew Brader was born and raised in New Orleans, LA, and began his training with Karen Hebert and at the New Orleans Center for the Creative Arts with Jan Miller and Miguel Lopez. He attended The Harid Conservatory in Boca Raton, FL, on full scholarship and the Jacqueline Kennedy Onassis School at American Ballet Theatre, also studying privately with Susan Jaffe. He was invited to join ABT as an apprentice, dancing with the company at The Metropolitan Opera House at Lincoln Center, and then joined the Houston Ballet performing in ballets by Stanton Welch, Ben Stevenson, John Cranko, Kenneth MacMillan and George Balanchine. He danced with the Los Angeles Ballet for four seasons performing principal roles in George Balanchine's Agon, The Four Temperaments, Stravinsky Violin Concerto, Serenade, Kammermuzik No.2, Lar Lubovich's The Evangelist, Bournonville's Napoli Pas de Six and original works by Josie Walsh, Sonya Tayeh, Olivier Wevers, and Melissa Barak's Scrying presented as the first dance installation performed at NYC's Modern Museum of Art. Andrew was a Lester Horton Award nominee for Outstanding Achievement in Performance and winner of the Habich Corey Award for Emerging Choreographer. He spent two seasons with BalletMet Columbus before joining Stadt Theater Chemnitz as a Soloist in Chemnitz, Germany.  Andrew danced with Complexions Contemporary Ballet from 2014-2018 under the direction of Dwight Rhoden and Desmond Richardson and has taught for Complexions’ intensives, as well as Joffrey Ballet School summer intensives. Andrew has performed on the stages of The Metropolitan Opera House NYC, The Kennedy Center DC, The Music Center Los Angeles, The Tel-Aviv Opera House Israel, The Odessa Opera Ukraine, The Mikhailovsky Theater in St. Petersburg and The Kremlin Palace Moscow, Russia. He’s danced alongside international dance stars in the galas of Laguna Dance Festival, World Ballet Competition, City Dance Gala DC, The Golden Swan Gala, and The Monterrey International Ballet Gala Mexico. Andrew has appeared in music videos for Jill Scott and music legend Nile Rodgers and has also worked as a model for Los Angeles Fashion Week, New York Fashion Week, and New York Men’s Fashion Week."},
            {id: 6, image: require('./images/casa_headshot.jpg'), resizeImage: false, title: "Casa Grant", subtitle: "Jazz Funk, Hip Hop, Jazz", bio: "Casa Grant is a Southwest explosion that comes to you in all forms entertainment. While his main artistic focus is dance and everything inclusive, he also dabbles in the world of acting, the behind the scenes with creative directing and also artistic coaching. Casa's first taste of professional work when started the day he was born, where he was featured in the local Ft. Hood news paper for being “unexpectedly delivered” by his father who was a soldier in the US Army. Since then, he has grown into professionally represented all around artist and entertainer in the entertain industry in Los Angeles California. In the last decade of his ongoing career, he has been hired to do several print ads, performed nationally and internationally in professional shows, danced in films and television with some of your favorite actors; artists; and athletes, and has recently transitioned into acting by way of stand in and currently hosts/emcees in the competitive dance industry for Revolution Talent.  When it comes to dance Casa is constantly training and working to perfect his craft so that he can continue to be highly sought after within his industry, and also so he can bring his best knowledge to the next generations of dance hopefuls. As a dancer most of Casas training took place in Hawaii (24/7 & Nix Dance) and Arizona (LimeLight Pro. & Dance Fusion), he was fortunate to take training from elite teachers and choreographers in California as well. As a teacher, Casa has been fortunate enough to train dancers across the world, some of which have continued to dance professionally in the commercial and concert industries. He really enjoys “transitioning” dancers to a point where they can comfortably join a higher level class and even go into the professional world and now what to do/expect. He helps artists feel more confident in their foundational and performance skills. He provides a self accountable environment that allows dancers of any level to bravely grow into their best through foundation training, movement exploration, and choreography. His joy as a mentor comes from seeing his students grow into the best versions of themselves while they are training with him. Although Casa is a well rounded, versatile dancer, he focuses on teaching mainly Jazz and Hip Hop (all varieties), and also includes Lyrical and Contemporary. While holding students accountable for their own growth, he also nurtures and supports them, in every class. Although Casa prefers live interaction, this pandemic has allowed him to grow in his technological and social media presence by providing zoom classes as those became his temporary outlet. He started teaching online classes and doing private lessons for studios in New York, Louisiana, Florida and California.  While his career has given him many opportunities thus far, he does looks forward to what his future brings him, while he gratefully works on staying focused on what the present, presents to him"},
            {id: 7, image: require('./images/jose_headshot.jpg'), title: "Jose Perez", resizeImage: true, subtitle: "Ballroom, Ballroom Fusion", bio: "From a very early age, Jose knew he was born to perform. This Puerto Rican native started dancing at the age of 12 and has never looked back. Folkloric, Jazz, Hip Hop and Salsa first brought him to the dance floor, but four years of formal ballet training really brought his dancing skills together.  In 2008, Jose fell in love with ballroom dancing and began training intensely as a professional instructor. He is a multi-lingual dancer specializing in latin dancing, but Salsa, Mambo and Cha Cha have always been Jose’s favorites. He has competed all over the country.  José is your reigning champion for United States Dance Pro/Am Mambo Championship  and recently competed on his very first Country Western Line Dance competition winning 1st place overall champion. When you don’t see Jose on the dance floor, he’s probably creating works of art with his sewing machine.  Jose is also a costume designer, having trained under some of Central Florida’s best designers while he worked at Hardrive Productions, Inc.  He’s helped to create costumes for Walt Disney World, Universal Studios and many other theme park shows.  Also other stage performers like singers, and theater just to mention some. He is also a professional makeup artist and hair stylist, earning his Cosmetology Certification from Aveda Institute.  Jose is an extremely well-rounded dancer, costume designer, and performer, creating works of art for many all over the country."},
            {id: 8, image: require('./images/margaux_headshot.jpg'), title: "Margaux Leffas", resizeImage: true, subtitle: "Tap", bio: "Raised in sunny San Diego, Margaux fell in love with dance from the second she put on tap shoes. Her early years of training were at the well renowned San Diego Dance Centre. She trained under some of the best competition dance instructors on the west coast such as, Michelle Miner, Sharon Keller, Kristen Hibbs, Tiffani Francy, and Lynn-Rae Hiers. During her years at the studio, she was fortunate to begin assisting at age 11 and teaching at age 15. She received many opportunities to assist Michelle Miner, a nation-wide tap choreographer in the competition world. After grade school years, she went off to pursue a career in dance. She attended Orange Coast College and received her Associates in Fine Arts and then made her way to Las Vegas and received her bachelor’s degree in Fine Arts with emphasis in Performance from UNLV. She has trained and competed in tap, jazz, lyrical, contemporary, and musical theatre. Once her school years were completed, she moved back to California to continue what she loves most, teaching dance to the next generation. Since Margaux has been teaching for 13 + years, you can find her students on WOD, tv commercials and more. Margaux has won many awards at competitions such as “Highest Score of the Competition”, “Tap Excellence” and lastly has been nominated for the IDA’s several times for her Tap routines. While living in LA she was signed with Trio Talent Agency, where she booked some fun print commercial ads such as Aquafina and Gap. In that time, she wanted to share the knowledge she gained over the years with the next generation all over the country. She works with Spotlight Dance Cup as a Social Media Coordinator Trainer and is also judging with Starquest. Currently living in Las Vegas, NV Margaux continues her dance career along with inspiring children through teaching and living at dance competitions She has been blessed to continue sharing her love for dance through teaching, choreographing, and judging."}        
      ]
    })
  }
</script>

<style >
  .resizeImage > * {
    background-position: 0 0 !important;
  }
</style>

