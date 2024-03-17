(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_waiting_room_rules__rules
type cloudflare_waiting_room_rules

val cloudflare_waiting_room_rules :
  ?id:string prop ->
  waiting_room_id:string prop ->
  zone_id:string prop ->
  rules:cloudflare_waiting_room_rules__rules list ->
  string ->
  unit
