SELECT
  "public"."applications"."id" AS "id",
  (
    "public"."applications"."metadata" #>> array [ 'application',
    'project',
    'title' ] :: text [ ]
  ) :: text AS "project_title",
  lower(
    "public"."applications"."metadata" #>> array [ 'application',
    'recipient' ] :: text [ ]
  ) :: text AS "recipient",
  (
    "public"."applications"."metadata" #>> array [ 'application',
    'project',
    'description' ] :: text [ ]
  ) :: text AS "description",
  "public"."applications"."chain_id" AS "chain_id",
  "public"."applications"."round_id" AS "round_id",
  "public"."applications"."project_id" AS "project_id",
  "public"."applications"."status" AS "status",
  'Octant Community Round 1' AS round_name
FROM
  "public"."applications"
WHERE  round_id = '66' AND chain_id = '10'
AND "public"."applications"."status" = 'APPROVED'