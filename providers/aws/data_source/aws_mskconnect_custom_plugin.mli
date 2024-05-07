(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_mskconnect_custom_plugin

val aws_mskconnect_custom_plugin :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_mskconnect_custom_plugin

val yojson_of_aws_mskconnect_custom_plugin :
  aws_mskconnect_custom_plugin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
