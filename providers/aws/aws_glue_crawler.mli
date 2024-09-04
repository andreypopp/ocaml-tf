(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type catalog_target

val catalog_target :
  ?connection_name:string prop ->
  ?dlq_event_queue_arn:string prop ->
  ?event_queue_arn:string prop ->
  database_name:string prop ->
  tables:string prop list ->
  unit ->
  catalog_target

type delta_target

val delta_target :
  ?connection_name:string prop ->
  ?create_native_delta_table:bool prop ->
  delta_tables:string prop list ->
  write_manifest:bool prop ->
  unit ->
  delta_target

type dynamodb_target

val dynamodb_target :
  ?scan_all:bool prop ->
  ?scan_rate:float prop ->
  path:string prop ->
  unit ->
  dynamodb_target

type hudi_target

val hudi_target :
  ?connection_name:string prop ->
  ?exclusions:string prop list ->
  maximum_traversal_depth:float prop ->
  paths:string prop list ->
  unit ->
  hudi_target

type iceberg_target

val iceberg_target :
  ?connection_name:string prop ->
  ?exclusions:string prop list ->
  maximum_traversal_depth:float prop ->
  paths:string prop list ->
  unit ->
  iceberg_target

type jdbc_target

val jdbc_target :
  ?enable_additional_metadata:string prop list ->
  ?exclusions:string prop list ->
  connection_name:string prop ->
  path:string prop ->
  unit ->
  jdbc_target

type lake_formation_configuration

val lake_formation_configuration :
  ?account_id:string prop ->
  ?use_lake_formation_credentials:bool prop ->
  unit ->
  lake_formation_configuration

type lineage_configuration

val lineage_configuration :
  ?crawler_lineage_settings:string prop ->
  unit ->
  lineage_configuration

type mongodb_target

val mongodb_target :
  ?scan_all:bool prop ->
  connection_name:string prop ->
  path:string prop ->
  unit ->
  mongodb_target

type recrawl_policy

val recrawl_policy :
  ?recrawl_behavior:string prop -> unit -> recrawl_policy

type s3_target

val s3_target :
  ?connection_name:string prop ->
  ?dlq_event_queue_arn:string prop ->
  ?event_queue_arn:string prop ->
  ?exclusions:string prop list ->
  ?sample_size:float prop ->
  path:string prop ->
  unit ->
  s3_target

type schema_change_policy

val schema_change_policy :
  ?delete_behavior:string prop ->
  ?update_behavior:string prop ->
  unit ->
  schema_change_policy

type aws_glue_crawler

val aws_glue_crawler :
  ?classifiers:string prop list ->
  ?configuration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?security_configuration:string prop ->
  ?table_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_target:catalog_target list ->
  ?delta_target:delta_target list ->
  ?dynamodb_target:dynamodb_target list ->
  ?hudi_target:hudi_target list ->
  ?iceberg_target:iceberg_target list ->
  ?jdbc_target:jdbc_target list ->
  ?lake_formation_configuration:lake_formation_configuration list ->
  ?lineage_configuration:lineage_configuration list ->
  ?mongodb_target:mongodb_target list ->
  ?recrawl_policy:recrawl_policy list ->
  ?s3_target:s3_target list ->
  ?schema_change_policy:schema_change_policy list ->
  database_name:string prop ->
  name:string prop ->
  role:string prop ->
  unit ->
  aws_glue_crawler

val yojson_of_aws_glue_crawler : aws_glue_crawler -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  classifiers : string list prop;
  configuration : string prop;
  database_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role : string prop;
  schedule : string prop;
  security_configuration : string prop;
  table_prefix : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?classifiers:string prop list ->
  ?configuration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?security_configuration:string prop ->
  ?table_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_target:catalog_target list ->
  ?delta_target:delta_target list ->
  ?dynamodb_target:dynamodb_target list ->
  ?hudi_target:hudi_target list ->
  ?iceberg_target:iceberg_target list ->
  ?jdbc_target:jdbc_target list ->
  ?lake_formation_configuration:lake_formation_configuration list ->
  ?lineage_configuration:lineage_configuration list ->
  ?mongodb_target:mongodb_target list ->
  ?recrawl_policy:recrawl_policy list ->
  ?s3_target:s3_target list ->
  ?schema_change_policy:schema_change_policy list ->
  database_name:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?classifiers:string prop list ->
  ?configuration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?security_configuration:string prop ->
  ?table_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_target:catalog_target list ->
  ?delta_target:delta_target list ->
  ?dynamodb_target:dynamodb_target list ->
  ?hudi_target:hudi_target list ->
  ?iceberg_target:iceberg_target list ->
  ?jdbc_target:jdbc_target list ->
  ?lake_formation_configuration:lake_formation_configuration list ->
  ?lineage_configuration:lineage_configuration list ->
  ?mongodb_target:mongodb_target list ->
  ?recrawl_policy:recrawl_policy list ->
  ?s3_target:s3_target list ->
  ?schema_change_policy:schema_change_policy list ->
  database_name:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
