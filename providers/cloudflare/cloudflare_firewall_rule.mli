(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_firewall_rule

val cloudflare_firewall_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  ?products:string prop list ->
  action:string prop ->
  filter_id:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_firewall_rule

val yojson_of_cloudflare_firewall_rule :
  cloudflare_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  description : string prop;
  filter_id : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  products : string list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  ?products:string prop list ->
  action:string prop ->
  filter_id:string prop ->
  zone_id:string prop ->
  string ->
  t
