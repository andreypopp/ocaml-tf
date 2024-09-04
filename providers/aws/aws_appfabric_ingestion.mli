(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appfabric_ingestion

val aws_appfabric_ingestion :
  ?tags:string prop Tf_core.assoc ->
  app:string prop ->
  app_bundle_arn:string prop ->
  ingestion_type:string prop ->
  tenant_id:string prop ->
  unit ->
  aws_appfabric_ingestion

val yojson_of_aws_appfabric_ingestion :
  aws_appfabric_ingestion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app : string prop;
  app_bundle_arn : string prop;
  arn : string prop;
  id : string prop;
  ingestion_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  app:string prop ->
  app_bundle_arn:string prop ->
  ingestion_type:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  app:string prop ->
  app_bundle_arn:string prop ->
  ingestion_type:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
