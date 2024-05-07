(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_xray_encryption_config

val aws_xray_encryption_config :
  ?id:string prop ->
  ?key_id:string prop ->
  type_:string prop ->
  unit ->
  aws_xray_encryption_config

val yojson_of_aws_xray_encryption_config :
  aws_xray_encryption_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
