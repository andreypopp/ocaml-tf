(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type ssl__validation_errors = {
  message : string prop;  (** message *)
}

type ssl__validation_records = {
  cname_name : string prop;  (** cname_name *)
  cname_target : string prop;  (** cname_target *)
  emails : string prop list;  (** emails *)
  http_body : string prop;  (** http_body *)
  http_url : string prop;  (** http_url *)
  txt_name : string prop;  (** txt_name *)
  txt_value : string prop;  (** txt_value *)
}

type ssl__settings

val ssl__settings :
  ?ciphers:string prop list ->
  ?early_hints:string prop ->
  ?http2:string prop ->
  ?min_tls_version:string prop ->
  ?tls13:string prop ->
  unit ->
  ssl__settings

type ssl

val ssl :
  ?bundle_method:string prop ->
  ?certificate_authority:string prop ->
  ?custom_certificate:string prop ->
  ?custom_key:string prop ->
  ?method_:string prop ->
  ?type_:string prop ->
  ?wildcard:bool prop ->
  settings:ssl__settings list ->
  unit ->
  ssl

type cloudflare_custom_hostname

val cloudflare_custom_hostname :
  ?custom_metadata:(string * string prop) list ->
  ?custom_origin_server:string prop ->
  ?custom_origin_sni:string prop ->
  ?id:string prop ->
  ?wait_for_ssl_pending_validation:bool prop ->
  hostname:string prop ->
  zone_id:string prop ->
  ssl:ssl list ->
  unit ->
  cloudflare_custom_hostname

val yojson_of_cloudflare_custom_hostname :
  cloudflare_custom_hostname -> json

(** RESOURCE REGISTRATION *)

type t = private {
  custom_metadata : (string * string) list prop;
  custom_origin_server : string prop;
  custom_origin_sni : string prop;
  hostname : string prop;
  id : string prop;
  ownership_verification : (string * string) list prop;
  ownership_verification_http : (string * string) list prop;
  status : string prop;
  wait_for_ssl_pending_validation : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_metadata:(string * string prop) list ->
  ?custom_origin_server:string prop ->
  ?custom_origin_sni:string prop ->
  ?id:string prop ->
  ?wait_for_ssl_pending_validation:bool prop ->
  hostname:string prop ->
  zone_id:string prop ->
  ssl:ssl list ->
  string ->
  t
