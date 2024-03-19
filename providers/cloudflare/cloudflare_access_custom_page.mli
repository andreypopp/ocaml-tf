(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_access_custom_page

val cloudflare_access_custom_page :
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?custom_html:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  cloudflare_access_custom_page

val yojson_of_cloudflare_access_custom_page :
  cloudflare_access_custom_page -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  app_count : float prop;
  custom_html : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?custom_html:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
