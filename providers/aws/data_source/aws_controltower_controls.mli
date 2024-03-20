(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_controltower_controls

val aws_controltower_controls :
  ?id:string prop ->
  target_identifier:string prop ->
  unit ->
  aws_controltower_controls

val yojson_of_aws_controltower_controls :
  aws_controltower_controls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled_controls : string list prop;
  id : string prop;
  target_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  target_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  target_identifier:string prop ->
  string ->
  t Tf_core.resource
