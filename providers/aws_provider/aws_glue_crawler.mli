(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_crawler__catalog_target
type aws_glue_crawler__delta_target
type aws_glue_crawler__dynamodb_target
type aws_glue_crawler__hudi_target
type aws_glue_crawler__iceberg_target
type aws_glue_crawler__jdbc_target
type aws_glue_crawler__lake_formation_configuration
type aws_glue_crawler__lineage_configuration
type aws_glue_crawler__mongodb_target
type aws_glue_crawler__recrawl_policy
type aws_glue_crawler__s3_target
type aws_glue_crawler__schema_change_policy
type aws_glue_crawler

val aws_glue_crawler :
  ?classifiers:string list ->
  ?configuration:string ->
  ?description:string ->
  ?schedule:string ->
  ?security_configuration:string ->
  ?table_prefix:string ->
  ?tags:(string * string) list ->
  database_name:string ->
  name:string ->
  role:string ->
  catalog_target:aws_glue_crawler__catalog_target list ->
  delta_target:aws_glue_crawler__delta_target list ->
  dynamodb_target:aws_glue_crawler__dynamodb_target list ->
  hudi_target:aws_glue_crawler__hudi_target list ->
  iceberg_target:aws_glue_crawler__iceberg_target list ->
  jdbc_target:aws_glue_crawler__jdbc_target list ->
  lake_formation_configuration:
    aws_glue_crawler__lake_formation_configuration list ->
  lineage_configuration:aws_glue_crawler__lineage_configuration list ->
  mongodb_target:aws_glue_crawler__mongodb_target list ->
  recrawl_policy:aws_glue_crawler__recrawl_policy list ->
  s3_target:aws_glue_crawler__s3_target list ->
  schema_change_policy:aws_glue_crawler__schema_change_policy list ->
  string ->
  unit
