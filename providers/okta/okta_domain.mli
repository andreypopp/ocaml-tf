(** Manages custom domain for your organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_records = {
  expiration : string prop;  (** expiration *)
  fqdn : string prop;  (** fqdn *)
  record_type : string prop;  (** record_type *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type okta_domain

val okta_domain :
  ?brand_id:string prop ->
  ?certificate_source_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  unit ->
  okta_domain

val yojson_of_okta_domain : okta_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  certificate_source_type : string prop;
  dns_records : dns_records list prop;
  id : string prop;
  name : string prop;
  validation_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?brand_id:string prop ->
  ?certificate_source_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?brand_id:string prop ->
  ?certificate_source_type:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
