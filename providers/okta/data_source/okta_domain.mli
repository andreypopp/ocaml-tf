(** Get a domain from Okta. *)

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
  domain_id_or_name:string prop -> unit -> okta_domain

val yojson_of_okta_domain : okta_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_source_type : string prop;
  dns_records : dns_records list prop;
  domain : string prop;
  domain_id_or_name : string prop;
  id : string prop;
  public_certificate : (string * string) list prop;
  validation_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  domain_id_or_name:string prop ->
  string ->
  t

val make :
  domain_id_or_name:string prop -> string -> t Tf_core.resource
