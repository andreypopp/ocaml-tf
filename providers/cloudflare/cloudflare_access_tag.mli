(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_access_tag

val cloudflare_access_tag :
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_access_tag

val yojson_of_cloudflare_access_tag : cloudflare_access_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  app_count : float prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t
