(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_uptime_check

type t = private {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  regions : string list prop;
  target : string prop;
  type_ : string prop;
}

val digitalocean_uptime_check :
  ?enabled:bool prop ->
  ?regions:string prop list ->
  ?type_:string prop ->
  name:string prop ->
  target:string prop ->
  string ->
  t
