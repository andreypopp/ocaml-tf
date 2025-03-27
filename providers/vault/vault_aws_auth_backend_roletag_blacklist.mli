(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_roletag_blacklist

val vault_aws_auth_backend_roletag_blacklist :
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  backend:string prop ->
  unit ->
  vault_aws_auth_backend_roletag_blacklist

val yojson_of_vault_aws_auth_backend_roletag_blacklist : vault_aws_auth_backend_roletag_blacklist -> json

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
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?disable_periodic_tidy:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?safety_buffer:float prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
