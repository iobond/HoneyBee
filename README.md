# HoneyBee
HoneyBee Client -  mining data to get community point and rewards when done the job


2020-02-07 Beta version  0.3

1. Mining basic trading data for cumulating community point, and chance to get reward block




Configuration:

Place the honeybee.yaml aside with the main program.

rpc_config:
  host: pool.canbitcoin.com
  port: 52020
  user: user
  pass: password
arbapi_config:
-----------   for basic users ----------------------
- exchange_a: ""
  exchange_b: ""
  pair: ""
  auto: true  <-- that's auto , and lazy way to let this program running

--------------  as much blocks as you want if you want them to run mutli-processing, base your CPU, memory, and network capibility  -----------------------------

- exchange_a: ""
  exchange_b: ""
  pair: ""
  auto: true
- exchange_a: ""
  exchange_b: ""
  pair: ""
  auto: true
- exchange_a: ""
  exchange_b: ""
  pair: ""
  auto: true

-----------   for advanced users ----------------------
- exchange_a: STEX   <-- set first exchange platfrom
  exchange_b: TXBIT   <-- set second exchange platfrom
  pair: ETH|AIB            <-- set the pair for the trading data mining


member:
  nickname: aib
  rewardaddress: AKWodUNZYLWEs5KVnUqH47rF6wsTU5NWo6  <--change to your own AIB address. one account associate with one AIB address,  You could get it from https://txbit.io/?r=9ee9 

  email: dev@aib.com  <--  change to your notification email or leave blank for anonymous style
