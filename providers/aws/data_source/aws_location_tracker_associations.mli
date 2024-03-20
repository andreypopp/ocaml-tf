(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location_tracker_associations

val aws_location_tracker_associations :
  ?id:string prop ->
  tracker_name:string prop ->
  unit ->
  aws_location_tracker_associations

val yojson_of_aws_location_tracker_associations :
  aws_location_tracker_associations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consumer_arns : string list prop;
  id : string prop;
  tracker_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  tracker_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  tracker_name:string prop ->
  string ->
  t Tf_core.resource
