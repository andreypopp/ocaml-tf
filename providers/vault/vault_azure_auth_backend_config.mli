(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_azure_auth_backend_config

val vault_azure_auth_backend_config :
  ?backend:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  resource:string prop ->
  tenant_id:string prop ->
  unit ->
  vault_azure_auth_backend_config

val yojson_of_vault_azure_auth_backend_config : vault_azure_auth_backend_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  client_id : string prop;
  client_secret : string prop;
  disable_automated_rotation : bool prop;
  environment : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_ttl : float prop;
  namespace : string prop;
  resource : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  resource:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  resource:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
