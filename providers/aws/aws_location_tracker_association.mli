(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_location_tracker_association

val aws_location_tracker_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  unit ->
  aws_location_tracker_association

val yojson_of_aws_location_tracker_association :
  aws_location_tracker_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  string ->
  t
