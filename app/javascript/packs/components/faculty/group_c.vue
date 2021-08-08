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
            {id: 9, image: "./../../../app/assets/images/estefania_headshot.jpg", title: "Estefania DeLa Cruz", subtitle: "Musical Theater, Improv", bio: "Estefania moved to Los Angeles at the age of 18 from Raleigh North Carolina. She was hired to be a dancer on the TV show, Glee. She then got to travel the world on tour with 5th Harmony & Natalie La Rose. Estefania has starred in many national commercials like Hyundai, Wells Fargo, L’Oreal, and Invisalign. She moved to Las Vegas for two years to star in Michael Jackson ONE by Cirque Du Soleil. While in Vegas she was part of the cast of Jubilee under the direction of Frank Grayson. She has also worked with Janet Jackson, Justin Bieber, Mariah Carey, and many others. She was most recently on the creative team for Beyoncés BLACK IS KING. Another huge passion of hers is teaching and mentoring the next generation of dancers. She has had the opportunity to teach dance to kids and young adults around the world."},
            {id: 10, image: "", title: "Olga Pikhienko", subtitle: "Acro, Contortion, Stretch", bio: "Olga started in rhythmic gymnastics at the age of five in Russia. When Olga turned 11, she started performing with her father, Alexander Pikhienko, at the Nikulin Circus and Ringling Brothers and Barnum & Bailey Circus. Early in her career, Olga’s act with her father, won a Gold Medal at the International Festival in Paris. Soon after, they won a Silver Medal in China at the World Festival. Olga toured with Cirque Du Soleil’s, Quidam for 12 years performed her iconic Hand Balancing Contortion with Canes Act, throughout Europe and North America. Then, she starred in Cirque Du Soleil’s next creation Varekai. The Varekai show was turned into a documentary series, Fire Within, on Bravo’s TV Network where she was featured as one of the leading characters. Fire Within, won an Emmy Award for Outstanding Nonfiction Program. Olga, at the Paris International Festival received another Gold Medal and her performance was said to be “One of the Best Acts in the World”.  Next Olga became part of the original cast of Cirque Du Soleil’s show, Iris. Iris,  a journey through the world of Cinema, was Cirque Du Soleil’s first residency show in Los Angeles. While in Iris, she was part of the elite cast of artists who performed at 84th Academy Awards Ceremony. She has also performed on Criminal Minds, NBA Halftime show, Spiegelworld with their Empire Australian Tour and a Japanese tour of Le Noir, The Dark Side of Cirque. Olga continues to branch out artistically and spends her time developing new acts for special events, commercials, print and video. Today, Olga Pikhienko is a Private Coach and Freelance Performer, showing her talent around the world."},
            {id: 11, image: "./../../../app/assets/images/mario_headshot.jpg", title: "Mario Spinetti", subtitle: "Ballroom, Ballroom Fusion", bio: "When asked to describe Mario Spinetti's singing, Garth Brooks, the best-selling solo artist of all time, said: 'It's the most beautiful treatment I've ever heard, of any music, at all.'And since publishing his music performances in late 2018, Mario has received accolades from dozens more artists, including the likes of legendary singer-songwriter Judy Collins, pop phenom Lizzo, multi-Grammy Award-winner Seal, and soul crooner Sam Smith, along with some of the most influential and successful writers and producers in the music industry. But Mario wasn't always exclusively a solo artist -- his history as a teacher has been equally illustrious, having worked with multi-platinum vocal recording artists, while educating at such prestigious establishments as NYU's Clive Davis Institute and LaGuardia Arts High School, with his own patented method of vocal pedagogy.  He has also won John Lennon and Bertelsmann songwriting awards, and has taken solo bows at Carnegie Hall and The Kennedy Center. Now, as Mario sets out on a path to release more of his own music, he is choosing to give back to the forthcoming young artist community with a series of workshops and private lessons on contemporary vocal craft, as well as with his “Musicality For Dance” curriculum, created after over a decade of collaborations with movement artists from companies and programs such as Nederlands Dans Theater, Bat Sheva, Martha Graham, Parsons, So You Think You Can Dance, World Of Dance, and more.  The “Musicality For Dance” program was inaugurated at the Martha Graham School in New York City at the end of 2"},
            {id: 12, image: "./../../../app/assets/images/stevie_headshot.jpg", title: "Stevie Rae Stephens", subtitle: "Live Vocalist", bio: "From the vineyard filled suburbs of the California Bay Area, Stevie Rae Stephens is a pop singer-songwriter whose powerhouse vocals, presented through honest lyricism and soaring melodies, create the perfect canvas for her message of empowerment and feminism. Through years of training and competitive singing, Stevie Rae has performed on American Idol season 12, the pitching mound of the San Francisco Giants AT&T Park, and a multitude of local stages in Nashville including The Grand Ole Opry. Her fiery voice cuts through even the loudest crowd with conviction and intention paired with unforgettable melodies and motifs of self love and worth. With multiple singles, albums, and EPs released, Stevie Rae finds joy in using her degree in audio engineering to produce and curate projects and push herself to continuously grow within new experiences."}        
      ]
    })
  }
</script>

