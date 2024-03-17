(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_custom_page

type t = private {
  account_id : string prop;
  app_count : float prop;
  custom_html : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val cloudflare_access_custom_page :
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?custom_html:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
