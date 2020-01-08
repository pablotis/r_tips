#install.packages("twitteR")
library("twitteR")

consumerKey = '7WZfJVsDYRUsi5RN1RbhzRUZA'
consumerSecret = 'RWoYLdopWWyiQbfB669H3q0BEhmbWey5SAT3Wxpcnfi3wHDEcM'
accessToken = '4136598983-3mutLnmTApvjEXeOIZEpMDDDX42q3Qwi3z4jIL7'
accessTokenSecret = 'LP3Nc3KTFiQ8LBaILS51Xpd9OTQo26mkxKR7pKWWlSxxw'

setup_twitter_oauth(consumerKey,consumerSecret,accessToken,accessTokenSecret)

### Cargo consejos
texto <- read_lines("Atajos_txt.txt")

random <- sample(texto, size = 1)

tweet(random)

