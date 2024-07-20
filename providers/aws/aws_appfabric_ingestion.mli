(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appfabric_ingestion

val aws_appfabric_ingestion :
  ?tags:(string * string prop) list ->
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  app:string prop ->
  app_bundle_arn:string prop ->
  ingestion_type:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  app:string prop ->
  app_bundle_arn:string prop ->
  ingestion_type:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
