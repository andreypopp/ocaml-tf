(** Define Firewall rules using filter expressions for more control over
how traffic is matched to the rule. A filter expression permits
selecting traffic by multiple criteria allowing greater freedom in
rule creation.

Filter expressions needs to be created first before using Firewall
Rule.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  ?products:string prop list ->
  action:string prop ->
  filter_id:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
