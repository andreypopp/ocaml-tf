(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appfabric_app_bundle

val aws_appfabric_app_bundle :
  ?customer_managed_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_appfabric_app_bundle

val yojson_of_aws_appfabric_app_bundle :
  aws_appfabric_app_bundle -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  customer_managed_key_arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_managed_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?customer_managed_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
