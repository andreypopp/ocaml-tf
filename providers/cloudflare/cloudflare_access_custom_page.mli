(** Provides a resource to customize the pages your end users will see
when trying to reach applications behind Cloudflare Access.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?account_id:string prop ->
  ?app_count:float prop ->
  ?custom_html:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
