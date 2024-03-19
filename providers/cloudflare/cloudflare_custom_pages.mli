(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_custom_pages

val cloudflare_custom_pages :
  ?account_id:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?zone_id:string prop ->
  type_:string prop ->
  url:string prop ->
  unit ->
  cloudflare_custom_pages

val yojson_of_cloudflare_custom_pages :
  cloudflare_custom_pages -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  state : string prop;
  type_ : string prop;
  url : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?zone_id:string prop ->
  type_:string prop ->
  url:string prop ->
  string ->
  t
