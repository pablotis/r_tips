#install.packages("twitteR")
library("twitteR")

consumerKey = 'xeKkhl9LnbgHJbkhcFYxFnOhg'
consumerSecret = '7T1IwCH8pFuhyszaqvVPnTanuqtPJaE00IAkIrAJtqTYjwuRvZ'
accessToken = '1214735980172845056-xkZoLBVuAIEvgyPU0lAY0Nz4GrF9Xt'
accessTokenSecret = 'SrNctpaAk9OMVTkmbsYyTdsEs2CmbyU8NGx4KRRUDSDeI'

setup_twitter_oauth(consumerKey,consumerSecret,accessToken,accessTokenSecret)

### Cargo consejos
texto <- read_lines("Atajos_txt.txt")

random <- sample(texto, size = 1)

tweet(random)

