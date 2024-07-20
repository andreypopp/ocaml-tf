(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iap_tunnel_dest_group

val google_iap_tunnel_dest_group :
  ?cidrs:string prop list ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  group_name:string prop ->
  unit ->
  google_iap_tunnel_dest_group

val yojson_of_google_iap_tunnel_dest_group :
  google_iap_tunnel_dest_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidrs : string list prop;
  fqdns : string list prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidrs:string prop list ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  group_name:string prop ->
  string ->
  t

val make :
  ?cidrs:string prop list ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  group_name:string prop ->
  string ->
  t Tf_core.resource
