(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location_tracker_association

val aws_location_tracker_association :
  ?id:string prop ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  unit ->
  aws_location_tracker_association

val yojson_of_aws_location_tracker_association :
  aws_location_tracker_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  string ->
  t Tf_core.resource
