(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_identity_whitelist

val vault_aws_auth_backend_identity_whitelist :
  ?backend:string prop ->
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  unit ->
  vault_aws_auth_backend_identity_whitelist

val yojson_of_vault_aws_auth_backend_identity_whitelist : vault_aws_auth_backend_identity_whitelist -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  disable_periodic_tidy : bool prop;
  id : string prop;
  namespace : string prop;
  safety_buffer : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  string ->
  t Tf_core.resource
