# ruby-cli-template

  Through this CLI project, created with Ruby, you can add songs to a music catalog and then have them displayed by artist, genre, or your full catalog.
  
  Type run ruby app.rb in the terminal to begin and view the options menu.
  Once you run ruby app.rb in the terminal you will be shown the following options method:
  
     -Music Catalog- 
       1. Add a song
       2. Disply by artist
       3. Display by genre
       4. Display full music catalog
       5. Exit
       
  You must enter a digit 1-5 to correspond with the options menu. If you don't do so, you will be given a message reminding 
  you to use a digit from the options menu. After an option is choosen, once you go through the steps, you will be allowed 
  to choose another option.
  
At the start of the app your music catalog is empty so option 1 is a good place to start. When option 1 is choosen you will be asked to enter the name of the song, the name of the artist, and the genre of the song. This information will be stored into your music catalog. You may continously add songs, just pick option 1 again when asked.

Option 2 will ask you what artist do you want to filter your catalog by. Once answered, all songs in your catalog by that artist will be displayed. 

Option 3 will ask you what genre do you want to filter your catalog by. Once answered, all songs in your catalog in that genre will be displayed. 

Option 4 will display your full catalog from your previously added songs, regardless of artist or genre. 

After every option, with the exception of 5, you will be prompted with the options menu again. After selecting option 5 you will be closing the app.
