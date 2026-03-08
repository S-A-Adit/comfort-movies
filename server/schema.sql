DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  slug TEXT UNIQUE,
  title TEXT,
  mood TEXT,
  genre TEXT,
  year INTEGER,
  streaming TEXT,
  image TEXT,
  short_description TEXT,
  full_description TEXT
);

INSERT INTO movies 
(slug, title, mood, genre, year, streaming, image, short_description, full_description)
VALUES
('little-miss-sunshine','Little Miss Sunshine','Feeling Lost','Comedy-Drama',2006,'Hulu','/images/littleMissSunShine.jpg','A chaotic family road trip that somehow heals everyone.','A dysfunctional family travels across the country so their young daughter can compete in a beauty pageant...'),
('the-intern','The Intern','Need Comfort','Comedy',2015,'Max','/images/the_intern.jpg','A heartwarming story about mentorship and friendship.','A 70-year-old widower becomes an intern at an online fashion company...'),
('perks-of-being-a-wallflower','The Perks of Being a Wallflower','Feeling Emotional','Drama',2012,'Netflix','/images/perks.jpg','A coming-of-age story about friendship and healing.','An introverted high school freshman is taken under the wings of two seniors...'),
('crazy-rich-asians','Crazy Rich Asians','Romantic Mood','Romance',2018,'Prime Video','/images/crazy-rich-asians.jpg','Lavish romance meets family drama.','A New Yorker accompanies her boyfriend to Singapore and discovers his family is insanely wealthy...'),
('secret-life-of-walter-mitty','The Secret Life of Walter Mitty','Adventure Craving','Adventure',2013,'Disney+','/images/walter-mitty.jpg','A daydreamer escapes into real-life adventure.','A timid magazine employee embarks on a global journey...');