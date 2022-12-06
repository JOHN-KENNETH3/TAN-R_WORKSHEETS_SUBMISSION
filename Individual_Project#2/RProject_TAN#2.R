#Individual Project #2

#Name: John Kenneth D. Tan
#Course, Year & Section: BSIT 2-A


#Libraries to be used/called out

library(dplyr)
library(twitteR)
library(tidytext)
library(rtweet)
library(RColorBrewer)
library(ggplot2)


#1.Extract from twitter using your developer's credentials. 
#Choose any keyword you want. 

#Tokens and keys are needed. 
#Check your Programs and Apps in the Developer’s Portal.

CONSUMER_SECRET <- "bmUGeGVHxLxtc63GAyEHo2DDaHpmmjeJyrZ3XPLSMRtvOY8xpW"
CONSUMER_KEY <- "dxIq4p3oOGBD9DM4sfw2JVcFh"
ACCESS_SECRET <- "YkZLrUJVHrwCh44s92O70XaYmLZWCHvIDick1T60wdH5v"
ACCESS_TOKEN <- "1594143309362270210-hApMHAP6C8nRlj9ipxEfzrnLBbrWcJ"


#Connect to twitter app

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)


#2.Extract 10000 tweets from Twitter using twitteR package including retweets.

   Lisa_tweets = searchTwitter("Lalisa",
                               n=10000,
                               since = "2022-11-21",
                               until = "2022-11-28",
                               lang = "en",
                               retryOnRateLimit = 120)


#Convert data into dataframe

Lisa_DF <- twListToDF(Lisa_tweets)

class(Lisa_DF)
names(Lisa_DF)
View(Lisa_DF)
head(Lisa_DF)[1:5]
head(Lisa_$text)[1:5]

save(Lisa_DF,file = "Lisa_DF.Rdata")
load(file = "Lisa_DF.Rdata")


#Subsetting using the dplyr() package

#Subset the organic tweets

Lisa_OrigTwt <- subset(Lisa_DF, isRetweet == "FALSE",select =
                         c(text,screenName,created,isRetweet))
Lisa_OrigTwt

save(Lisa_OrigTwt, file = "Lisa_OrigTwt.Rdata")
load(file="Lisa_OrigTwt.Rdata")

Lisa_OrigTwt %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

Lisa_OrigTwt %>% 
  mutate(Created_At_Round = created%>% 
           round(units = 'hours') %>% 
           as.POSIXct())

Lisa_OrigTwt %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

Lisa_OrigTwt %>% pull(created) %>% max()

#Subset the retweets

Lisa_subRT <- subset(Lisa_DF, isRetweet == "TRUE",select =
                      c(text,screenName,created,isRetweet))
Lisa_subRT

save(Lisa_subRT, file = "Lisa_subRT.Rdata")
load(file="Lisa_subRT.Rdata")

Lisa_subRT %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

Lisa_subRT%>% 
  mutate(Created_At_Round = created%>% 
           round(units = 'hours') %>% 
           as.POSIXct())

Lisa_subRT %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

Lisa_subRT %>% pull(created) %>% max()

#3.Plot the retweets and the original tweets using bar graph in vertical manner. 
#Include legends

#a. Plotting of Organic tweets

ggplot(data = Lisa_OrigTwt, aes(x = created), fill = Lisa_OrigTwt) +
  geom_histogram(aes(fill = ..count..)) + 
  theme(legend.position="right",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 0, hjust = 1)) +
  xlab("Time") + ylab("Number of Organic tweets per Hour") + 
  scale_fill_gradient(low = "pink", high = "darkblue")


#b. Plotting of Retweets

ggplot(data = Lisa_subRT, aes(x = created), fill = Lisa_subRT) +
  geom_histogram(aes(fill = ..count..)) + 
  theme(legend.position="right",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 0, hjust = 1)) +
  xlab("Time") + ylab("Number of Reweets per Hour") + 
  scale_fill_gradient(low = "yellow", high = "red")

















