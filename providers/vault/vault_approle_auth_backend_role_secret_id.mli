(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_approle_auth_backend_role_secret_id

val vault_approle_auth_backend_role_secret_id :
  ?backend:string prop ->
  ?cidr_list:string prop list ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?namespace:string prop ->
  ?num_uses:float prop ->
  ?secret_id:string prop ->
  ?ttl:float prop ->
  ?with_wrapped_accessor:bool prop ->
  ?wrapping_ttl:string prop ->
  role_name:string prop ->
  unit ->
  vault_approle_auth_backend_role_secret_id

val yojson_of_vault_approle_auth_backend_role_secret_id : vault_approle_auth_backend_role_secret_id -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  backend : string prop;
  cidr_list : string list prop;
  id : string prop;
  metadata : string prop;
  namespace : string prop;
  num_uses : float prop;
  role_name : string prop;
  secret_id : string prop;
  ttl : float prop;
  with_wrapped_accessor : bool prop;
  wrapping_accessor : string prop;
  wrapping_token : string prop;
  wrapping_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?cidr_list:string prop list ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?namespace:string prop ->
  ?num_uses:float prop ->
  ?secret_id:string prop ->
  ?ttl:float prop ->
  ?with_wrapped_accessor:bool prop ->
  ?wrapping_ttl:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?cidr_list:string prop list ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?namespace:string prop ->
  ?num_uses:float prop ->
  ?secret_id:string prop ->
  ?ttl:float prop ->
  ?with_wrapped_accessor:bool prop ->
  ?wrapping_ttl:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
