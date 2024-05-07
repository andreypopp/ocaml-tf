(** Use this data source to retrieve an existing origin ca certificate. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_origin_ca_certificate

val cloudflare_origin_ca_certificate :
  id:string prop -> unit -> cloudflare_origin_ca_certificate

val yojson_of_cloudflare_origin_ca_certificate :
  cloudflare_origin_ca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  expires_on : string prop;
  hostnames : string list prop;
  id : string prop;
  request_type : string prop;
  revoked_at : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
