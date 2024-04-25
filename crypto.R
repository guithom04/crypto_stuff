library(coinmarketcapr)
key <- "68e539cb-ab73-46e6-9a91-165ca5bae7a5"
coinmarketcapr::setup(key)
cryptos.1 <- get_crypto_listings(start = 1, limit = 5000) 
cryptos.2 <- get_crypto_listings(start = 5000, limit = 5000) 
final = bind_rows(cryptos.1, cryptos.2)

final = bind_cols(final$id,
          final$name, 
          final$symbol, 
          final$slug, 
          final$num_market_pairs, 
          final$date_added,
          final$max_supply,
          final$circulating_supply,
          final$total_supply,
          final$infinite_supply,
          final$self_reported_circulating_supply,
          final$self_reported_market_cap,
          final$USD_price,
          final$USD_volume_24h,
          final$USD_percent_change_1h,
          final$USD_percent_change_24h,
          final$USD_percent_change_7d,
          final$USD_percent_change_30d,
          final$USD_percent_change_60d, 
          final$USD_percent_change_90d,
          final$USD_market_cap,
          final$USD_market_cap_dominance,
          final$USD_fully_diluted_market_cap,
          final$USD_last_updated)
View(final)


colnames(final)   <-    c("id",
                          "name", 
                          "symbol", 
                          "slug", 
                          "num_market_pairs", 
                          "date_added",
                          "max_supply",
                          "circulating_supply",
                          "total_supply",
                          "infinite_supply",
                          "self_reported_circulating_supply",
                          "self_reported_market_cap",
                          "USD_price",
                          "USD_volume_24h",
                          "USD_percent_change_1h",
                          "USD_percent_change_24h",
                          "USD_percent_change_7d",
                          "USD_percent_change_30d",
                          "USD_percent_change_60d", 
                          "USD_percent_change_90d",
                          "USD_market_cap",
                          "USD_market_cap_dominance",
                          "USD_fully_diluted_market_cap",
                          "USD_last_updated")



View(final)
write.csv(final, file = "finalfinal.csv")
getwd()
