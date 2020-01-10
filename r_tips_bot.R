#install.packages("twitteR")
#install.packages("rtweet")
#devtools::install_github("mkearney/rtweet", ref = "79fdf4aa7d219793bf2b201ce059f3bd6395bc7b")

library(twitteR)
library(readr)
library(tidyverse)

### Llaves de acceso a API Twitter
consumerKey = 'xeKkhl9LnbgHJbkhcFYxFnOhg'
consumerSecret = '7T1IwCH8pFuhyszaqvVPnTanuqtPJaE00IAkIrAJtqTYjwuRvZ'
accessToken = '1214735980172845056-SYK0B3E7bJPoHj5b4kjIRShNoskiCZ'
accessTokenSecret = 'URJX6yeIIY3r0c9C9HfzYWD3GqPeOn46VVooAmv2Ool5P'

setup_twitter_oauth(consumer_key = consumerKey, 
                    consumer_secret = consumerSecret, 
                    access_token = accessToken, 
                    access_secret = accessTokenSecret)

base_atajo <- readxl::read_excel("base/Atajos.xlsx", sheet = "Hoja1", col_names = TRUE)

base_prueba <- base_atajo %>%
  sample_n(., 1)

descripcion <- paste(base_prueba$Description_esp, paste0("[", base_prueba$Description_eng, "]"), sep = "")
comando_win_lin <- base_prueba$Windows_Linux
comando_mac <- base_prueba$Mac
referencia <- base_prueba$Referencia

twit <- glue::glue('  \n Atajo en R[R Shortcut]: {descripcion} \n ',
                   " \n \n",
                   '  \n Referencia[Reference]: {referencia} \n ',
                   " \n \n",
                   'Windows | Linux: {comando_win_lin} \n ',
                   " \n \n",
                   'Mac: {comando_mac}')

if(nchar(twit) <= 280) tweet(twit)
