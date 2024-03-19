(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_uptime_check

val digitalocean_uptime_check :
  ?enabled:bool prop ->
  ?regions:string prop list ->
  ?type_:string prop ->
  name:string prop ->
  target:string prop ->
  unit ->
  digitalocean_uptime_check

val yojson_of_digitalocean_uptime_check :
  digitalocean_uptime_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  regions : string list prop;
  target : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?regions:string prop list ->
  ?type_:string prop ->
  name:string prop ->
  target:string prop ->
  string ->
  t
