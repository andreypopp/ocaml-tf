(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_link_association

val aws_networkmanager_link_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  link_id:string prop ->
  unit ->
  aws_networkmanager_link_association

val yojson_of_aws_networkmanager_link_association :
  aws_networkmanager_link_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  link_id:string prop ->
  string ->
  t
