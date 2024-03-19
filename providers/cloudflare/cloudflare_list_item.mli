(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type hostname

val hostname : url_hostname:string prop -> unit -> hostname

type redirect

val redirect :
  ?include_subdomains:bool prop ->
  ?preserve_path_suffix:bool prop ->
  ?preserve_query_string:bool prop ->
  ?status_code:float prop ->
  ?subpath_matching:bool prop ->
  source_url:string prop ->
  target_url:string prop ->
  unit ->
  redirect

type cloudflare_list_item

val cloudflare_list_item :
  ?asn:float prop ->
  ?comment:string prop ->
  ?ip:string prop ->
  account_id:string prop ->
  list_id:string prop ->
  hostname:hostname list ->
  redirect:redirect list ->
  unit ->
  cloudflare_list_item

val yojson_of_cloudflare_list_item : cloudflare_list_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  asn : float prop;
  comment : string prop;
  id : string prop;
  ip : string prop;
  list_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?asn:float prop ->
  ?comment:string prop ->
  ?ip:string prop ->
  account_id:string prop ->
  list_id:string prop ->
  hostname:hostname list ->
  redirect:redirect list ->
  string ->
  t
