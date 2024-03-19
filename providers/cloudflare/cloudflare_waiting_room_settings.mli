(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_waiting_room_settings

val cloudflare_waiting_room_settings :
  ?id:string prop ->
  ?search_engine_crawler_bypass:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_waiting_room_settings

val yojson_of_cloudflare_waiting_room_settings :
  cloudflare_waiting_room_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  search_engine_crawler_bypass : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?search_engine_crawler_bypass:bool prop ->
  zone_id:string prop ->
  string ->
  t
