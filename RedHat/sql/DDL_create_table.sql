create table mysql.comic_details
(
	comic varchar(400),
	alt_text varchar(400),
	num integer,
	link varchar(400),
	image varchar(400),
	image_link varchar(400)
);


Sampe DML 
--  NOT TO EXECUTE
/*
insert into mysql.comic_details values( "Elefino","Hell if I know",28,"https://xkcd.com//28/info.0.json","elefino.jpg","https://imgs.xkcd.com/comics/elefino.jpg")
insert into mysql.comic_details values( "Secret Worlds","No two adjacent circles are the same color.",52,"https://xkcd.com//52/info.0.json","secret_worlds.jpg","https://imgs.xkcd.com/comics/secret_worlds.jpg")
insert into mysql.comic_details values( "Godel, Escher, Kurt Halsey","I love the idea here, though of course it's not a great-quality drawing or scan.",24,"https://xkcd.com//24/info.0.json","godel_escher_kurthalsey.jpg","https://imgs.xkcd.com/comics/godel_escher_kurthalsey.jpg")
insert into mysql.comic_details values( "Zeppelin","A tribute to Buttercup Festival",73,"https://xkcd.com//73/info.0.json","zeppelin.jpg","https://imgs.xkcd.com/comics/zeppelin.jpg")
insert into mysql.comic_details values( "Godel, Escher, Kurt Halsey","I love the idea here, though of course it's not a great-quality drawing or scan.",24,"https://xkcd.com//24/info.0.json","godel_escher_kurthalsey.jpg","https://imgs.xkcd.com/comics/godel_escher_kurthalsey.jpg")
insert into mysql.comic_details values( "Bored with the Internet","I used to do this all the time.",77,"https://xkcd.com//77/info.0.json","bored_with_the_internet.jpg","https://imgs.xkcd.com/comics/bored_with_the_internet.jpg")
insert into mysql.comic_details values( "Useless","Even the identity matrix doesn't work normally",55,"https://xkcd.com//55/info.0.json","useless.jpg","https://imgs.xkcd.com/comics/useless.jpg")
insert into mysql.comic_details values( "Canyon","They're standing at the lip of the canyon, which isn't clear at all.",13,"https://xkcd.com//13/info.0.json","canyon_small.jpg","https://imgs.xkcd.com/comics/canyon_small.jpg")
insert into mysql.comic_details values( "Garfield","The use of the 'Garfield' character for the purposes of this parody qualifies as fair use under the Copyright Act of 1976, 17 U.S.C. sec. 107.  See Campbell v. Acuff-Rose Music (92-1292), 510 U.S. 569",78,"https://xkcd.com//78/info.0.json","garfield.jpg","https://imgs.xkcd.com/comics/garfield.jpg")
insert into mysql.comic_details values( "Barrel - Part 5","Too good not to happen.",31,"https://xkcd.com//31/info.0.json","barrel_part_5.jpg","https://imgs.xkcd.com/comics/barrel_part_5.jpg")
insert into mysql.comic_details values( "Katamari","As the King of All Cosmos remarked, 'Is it that it's fun, or that it lets you forget yourself?'",83,"https://xkcd.com//83/info.0.json","katamari.jpg","https://imgs.xkcd.com/comics/katamari.jpg")
insert into mysql.comic_details values( "Found","No more, no less",48,"https://xkcd.com//48/info.0.json","found.jpg","https://imgs.xkcd.com/comics/found.jpg")
insert into mysql.comic_details values( "Secret Worlds","No two adjacent circles are the same color.",52,"https://xkcd.com//52/info.0.json","secret_worlds.jpg","https://imgs.xkcd.com/comics/secret_worlds.jpg")
insert into mysql.comic_details values( "Monty Python -- Enough","I went to a dinner where there was a full 10 minutes of Holy Grail quotes exchanged, with no context, in lieu of conversation.  It depressed me badly.",16,"https://xkcd.com//16/info.0.json","monty_python.jpg","https://imgs.xkcd.com/comics/monty_python.jpg")
insert into mysql.comic_details values( "Kepler","Science joke.  You should probably just move along.",21,"https://xkcd.com//21/info.0.json","kepler.jpg","https://imgs.xkcd.com/comics/kepler.jpg")
*/