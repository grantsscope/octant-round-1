SELECT
  "public"."donations"."id" AS "id",
  "public"."donations"."chain_id" AS "chain_id",
  "public"."donations"."round_id" AS "round_id",
  "public"."donations"."application_id" AS "application_id",
  "public"."donations"."donor_address" AS "donor_address",
  "public"."donations"."recipient_address" AS "recipient_address",
  "public"."donations"."project_id" AS "project_id",
  "public"."donations"."transaction_hash" AS "transaction_hash",
  "public"."donations"."block_number" AS "block_number",
  "public"."donations"."token_address" AS "token_address",
  "public"."donations"."timestamp" AS "timestamp",
  "public"."donations"."amount" AS "amount",
  "public"."donations"."amount_in_usd" AS "amount_in_usd",
  "public"."donations"."amount_in_round_match_token" AS "amount_in_round_match_token",
  'Octant Community Round 1' AS "round_name"
FROM
  "public"."donations"
where round_id='66'
and chain_id='10'