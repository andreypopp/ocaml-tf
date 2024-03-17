(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_custom_hostname__ssl__settings

type cloudflare_custom_hostname__ssl__validation_errors = {
  message : string prop;  (** message *)
}

type cloudflare_custom_hostname__ssl__validation_records = {
  cname_name : string prop;  (** cname_name *)
  cname_target : string prop;  (** cname_target *)
  emails : string prop list;  (** emails *)
  http_body : string prop;  (** http_body *)
  http_url : string prop;  (** http_url *)
  txt_name : string prop;  (** txt_name *)
  txt_value : string prop;  (** txt_value *)
}

type cloudflare_custom_hostname__ssl
type cloudflare_custom_hostname

val cloudflare_custom_hostname :
  ?custom_metadata:(string * string prop) list ->
  ?custom_origin_server:string prop ->
  ?custom_origin_sni:string prop ->
  ?id:string prop ->
  ?wait_for_ssl_pending_validation:bool prop ->
  hostname:string prop ->
  zone_id:string prop ->
  ssl:cloudflare_custom_hostname__ssl list ->
  string ->
  unit
