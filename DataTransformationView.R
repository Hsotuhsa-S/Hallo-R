library("tidyverse")

artist = read.csv("Data/artist.csv")
names(artist)

ggplot(data = artist)

ggplot(data = artist) + 
  geom_point(mapping = aes(x = youtube_subscribers, y = spotify_monthly_listeners, color = group))

ggplot(data = artist) + 
  geom_point(mapping = aes(x = youtube_subscribers, y = spotify_monthly_listeners, size = group, color=group, shape=group))


by_genre = artist %>% group_by(genre) %>% summarise(count=n(), min(youtube_subscribers), max(youtube_subscribers), mean(youtube_subscribers))
