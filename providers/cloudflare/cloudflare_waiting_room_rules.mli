(** Provides a Cloudflare Waiting Room Rules resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules

val rules :
  ?description:string prop ->
  ?status:string prop ->
  action:string prop ->
  expression:string prop ->
  unit ->
  rules

type cloudflare_waiting_room_rules

val cloudflare_waiting_room_rules :
  ?id:string prop ->
  ?rules:rules list ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_waiting_room_rules

val yojson_of_cloudflare_waiting_room_rules :
  cloudflare_waiting_room_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  waiting_room_id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rules:rules list ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rules:rules list ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
