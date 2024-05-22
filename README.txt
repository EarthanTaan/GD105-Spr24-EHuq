# gd105-Spring24-earthcube
 GD105 a computer art class using Processing

Section A1

R1 A reproduction of Nassos Daphnis' artwork "SS-1-78" (1978).
This uses only the line function and a few variables to keep things aligned.
Revised: Using the original artwork as a transparent PImage, I was able to tighten up the facsimile.

R2 A reproduction of Kamal Boullata's  artwork "Lam Alif" (1983).
Similar to R1 but with more shapes and colors.
Revised in the same way as above.

R3 An artistic rendition of one of Jenny Holzer's "Truisms".
Uses an unusual frame dimension to accentuate the discomfort of the words displayed at awkward angles. Aethetically evokes a financial institution, but altered to be mildly hostile to the reader.
Revised to further push the bank-imagery by including a black marble texture, and darkening the letters to blend better with the new background.

R4 A map of my bookbag and the organization of items therein. Exceedingly simple. Deliberately low-resolution, but I don't think it works in the end. Dissatisfied with this piece.
Significantly improved after revision simply by adding noSmooth() to the code.

R5 An imaginary album cover for the original soundtrack to a real video game.
Took me way too long, but very pleased with the result. I had the image in mind first, and attached it to an album second. The chessboard is also a tome, the game has three kings which is one too many, and between all of them is a crucial pawn (the game's protagonist).
Tried to revise, but in the end made no changes.

Section A2

R1 A collage comprised of a lot of random images.
I tried to replicate the experience of taking whatever I could find in random magazines and putting them together in an image that reads even if it doesn't say anything. I feel that I succeeded. Artist's note: The train is meant to be exiting the woman's mouth, as if she is spitting or vomiting it out. I don't know that I succeeded at communicating that, but I tried.
My revision focused on this train image issue. I think I improved it slightly, but it may simply be a lost cause, due to the sexual tone of the image of the woman. We live in a society...

R2 Produces randomized spirographs in a limited color range. The background is not quite black, in order for darker spiro-shapes to be visible and create greater depth. The spiro-shapes are not perfectly symmetrical, which was an accident, but one I chose not to correct because I enjoy the effect.
My attempts to revise this were counfounded similarly to my original work on it. Once again, I failed to achieve my intended effects, but instead stumbled on something I like better. It now periodically flashes and fades in a new configuration, like a fireworks celebration.

R3 This is a beating heart, which beats faster the closer the mouse cursor gets to it. A dull red warning flashes when the user gets too close, and if they click the heart it will break. A rare case where I went in with a clear vision and was able to execute on it.
Revised by reducing lines of a for-loop into a ? conditional statement. No alteration to the program itself, but just a tiny bit of cleaning up the code under the hood.

R4 A perfectly looping gif which illustrates a cartoonishly stylized grandfather clock in a nondescript but welcoming hallway. The clock is maybe posessed. It is a perfect loop at 63 frames, running at 50 frames per second. Another clear vision executed as expected. I might be getting the hang of this.
Revised by changing the colors  and adding a crack in the wall to better match my original intent; that of a haunted clock in a spooky mansion hallway. Mostly used Tweak mode to make these changes.

Section A3

R1 An "un-Calendar" which simulates, to an unknown degree of veracity, the experience of time-blindness and/or dyscalculia (such as that experienced by people with ADHD). As far as I can tell and have been told, I experience both of these pretty severely. It's difficult for me to judge, because I have never experienced time "normally", so I don't really know if this communicates the experience to someone not familiar with it.
	The current date is represented by a flat color field. Mousing over the calendar reveals a key which helps decipher the current month and date. Both keys alter dynamically with the date as well, so the best indication for precision is to look where the calendar vanishes into the background. It occurs to me in hindsight, that this would be even more difficult to read with colorblindness. Something I would address if I were to iterate on this further.
Revised by re-learning and adding the necessary code to make the key slide into place and slide away, much preferable over just appearing and disappearing suddenly.

R2 Similar to my un-calendar, this is a timepiece which is difficult to read. Unlike my calendar, it's more of an art piece than a tool, and does not intend to communicate the time effectively at all. It's just meant to look cool and change with the current time.
Revised to fix the hours display, which I had not been aware was actually broken. It now behaves entirely as I originally inteded it to.

R3 A simple moire piece which looks good both still and animated. I returned to the 3D renderer for this one, because I knew if I nested a bunch of wireframe boxes and set them spinning I would get a good effect, and I was right. Thanks to my instructor who suggested a second set of boxes rotating in the opposite direction.
Something I didn't get to do was have each set of boxes centered on opposite sides of the window. When I tried to do that though, I was unable to rotate them independently. It still looked cool, but failed to achieve a strong moire effect, so I abandoned the attempt.
Revised just by adding the comments to the code which I forgot to include the first time around.

Section A4

R1 I abandoned almost every concept I had for this piece, simply because every time I thought I understood how to execute on my understanding of classes and objects, I was wrong, and it didn't work. Instead, I was able to approximate my original concept, and still end up creating something that means something to me. An excerpt of a song I sing to my child, rendered in my wife's hand. I met the artist once when I was young, and she elucidated that the song has no hidden meaning, it simply describes a feeling. I think that was when I learned that art can just be a vibe.

R2 I treated this assignment as an opportunity to automate as much as I could, even when in some cases that was technically a less efficient use of my time.
Taking the data of my missions completed with each weapon in the video game Monster Hunter Rise: Sunbreak, I was able to write a class for the image icons, and automate their instantiation into objects. The Data itself and the visualization of it are nothing to write home about, but I created an array of PVectors evenly spaced around the canvas on my first try, and I was proud of being able to execute that with comprehension. I also was sucessful without much fuss (besides fine tuning some variables for aesthetics) at giving the icons a little bit of animation/character, by having them begin at a standard size representing 0, and having them grow to represent their value in the data set.
Really beat my head against the wall on this one, until it all came together in the last couple hours.