(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_gcp_secret_backend

val vault_gcp_secret_backend :
  ?credentials:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  unit ->
  vault_gcp_secret_backend

val yojson_of_vault_gcp_secret_backend : vault_gcp_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  credentials : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  service_account_email : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?credentials:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  string ->
  t

val make :
  ?credentials:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  string ->
  t Tf_core.resource
