SELECT
  a."id" AS "id",
  (
    a."metadata" #>> array [ 'application',
    'project',
    'description' ] :: text [ ]
  ) :: text AS "description",
  (
    a."metadata" #>> array [ 'application',
    'recipient' ] :: text [ ]
  ) :: text AS "recipient"
FROM
  "public"."applications" a
where
    a.status = 'APPROVED' AND
    (    (a.chain_id = '42220' and lower(a.round_id)=lower('11')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('389')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('44')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('385')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('383')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('57')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('384')) or
        (a.chain_id = '42220' and lower(a.round_id)=lower('14')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('387')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('386')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('388')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('25')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('23')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('24')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('27')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('26')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('9')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('31')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('29')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('28')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('36')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('39')) or
        (a.chain_id = '137' and lower(a.round_id)=lower('0xa1D52F9b5339792651861329A046dD912761E9A9')) or
        (a.chain_id = '424' and lower(a.round_id)=lower('0x98720dD1925d34a2453ebC1F91C9d48E7e89ec29')) or
        (a.chain_id = '424' and lower(a.round_id)=lower('0xd4CC0dd193c7DC1d665AE244cE12D7FAB337a008')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x5eB890e41c8D2cFF75ea942085E406bB90016561')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('0x0F0b9d9F72C1660905C57864e79CeB409ADa0C9e')) or
        (a.chain_id = '424' and lower(a.round_id)=lower('0xE60A569eC8aac2045d9fda306DC2a16CC1e52a90')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x6726FE9C89fb04eAEf388C11cF55Be6AA0a62fb9')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('0xE168Ac27b7c32Db85478a6807640C8bcA1220D15')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x79115c9114055f16bB5b0e9bbFA450844D0FCB3A')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('0x3ac78e1Ae5086904d53b41c747188216789f59a7')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xC34745B3852DF32d5958BE88df2Bee0a83474001')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('0xA7608D95A93CC684F2719323D40cBD0f59Afe7D4')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x4727E3265706c59dBc31e7c518960F4F843BB4da')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x7F9415761AfBd82E3Fe2FD9e878FA643184bC729')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x36F548e082B09b0CEC5B3f5A7b78953C75de5e74')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xC08008D47E3deb10b27fc1a75a96d97D11d58cF8')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x40511F88B87B69496A3471CdBe1d3d25ac68e408')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xc9A01d3d2505D9d2418DD2da64d06cf53fD403a0')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xD309DeFD59C0b8792b14197EaA40043D9625B22B')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xB5C0939A9BB0C404b028D402493b86D9998af55e')) or
        (a.chain_id = '42161' and lower(a.round_id)=lower('0x911AE126BE7D88155aa9254C91A49f4d85b83688')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x8de918F0163b2021839A8D84954dD7E8e151326D')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xb6Be0eCAfDb66DD848B0480db40056Ff94A9465d')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x2871742B184633f8DC8546c6301cbC209945033e')) or
        (a.chain_id = '424' and lower(a.round_id)=lower('0x222EA76664ED77D18d4416d2B2E77937b76f0a35')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x10be322DE44389DeD49c0b2b73d8c3A1E3B6D871')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x5B95acf46c73Fd116F0fEDADcBEDF453530e35d0/')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xc5FdF5cFf79e92FAc1d6Efa725c319248D279200')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0xf591E42dfDfE8E62C2085CCaAdFE05F84D89D0c6')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x9331FDe4Db7b9d9d1498C09d30149929f24cF9D5')) or
        (a.chain_id = '10' and lower(a.round_id)=lower('0x30C381033aA2830cEB0aA372C2e4D28F004b3DB9')) or
        (a.chain_id = '1' and lower(a.round_id)=lower('0x69e423181f1D3E6BEbF8aB88030C36DA73785f26')) 
    )
LIMIT
  1048575