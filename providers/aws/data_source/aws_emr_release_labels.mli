(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filters

val filters :
  ?application:string prop -> ?prefix:string prop -> unit -> filters

type aws_emr_release_labels

val aws_emr_release_labels :
  ?id:string prop ->
  filters:filters list ->
  unit ->
  aws_emr_release_labels

val yojson_of_aws_emr_release_labels : aws_emr_release_labels -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  release_labels : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filters:filters list ->
  string ->
  t

val make :
  ?id:string prop ->
  filters:filters list ->
  string ->
  t Tf_core.resource
