(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opensearchserverless_collection

val aws_opensearchserverless_collection :
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_opensearchserverless_collection

val yojson_of_aws_opensearchserverless_collection :
  aws_opensearchserverless_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  collection_endpoint : string prop;
  created_date : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  last_modified_date : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
