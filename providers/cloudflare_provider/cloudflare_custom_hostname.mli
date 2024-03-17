(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_custom_hostname__ssl__settings

type cloudflare_custom_hostname__ssl__validation_errors = {
  message : string;  (** message *)
}

type cloudflare_custom_hostname__ssl__validation_records = {
  cname_name : string;  (** cname_name *)
  cname_target : string;  (** cname_target *)
  emails : string list;  (** emails *)
  http_body : string;  (** http_body *)
  http_url : string;  (** http_url *)
  txt_name : string;  (** txt_name *)
  txt_value : string;  (** txt_value *)
}

type cloudflare_custom_hostname__ssl
type cloudflare_custom_hostname

val cloudflare_custom_hostname :
  ?custom_metadata:(string * string) list ->
  ?custom_origin_server:string ->
  ?custom_origin_sni:string ->
  ?id:string ->
  ?wait_for_ssl_pending_validation:bool ->
  hostname:string ->
  zone_id:string ->
  ssl:cloudflare_custom_hostname__ssl list ->
  string ->
  unit
