(** Verifies the Domain. This is replacement for the `verify` field from the `okta_domain` resource. The resource won't be created if the domain could not be verified. The provider will make several requests to verify the domain until the API returns `VERIFIED` verification status.  *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_domain_verification

val okta_domain_verification :
  ?id:string prop ->
  domain_id:string prop ->
  unit ->
  okta_domain_verification

val yojson_of_okta_domain_verification :
  okta_domain_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  domain_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  domain_id:string prop ->
  string ->
  t Tf_core.resource
