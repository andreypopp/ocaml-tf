(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_azure_secret_backend

val vault_azure_secret_backend :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?use_microsoft_graph_api:bool prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  unit ->
  vault_azure_secret_backend

val yojson_of_vault_azure_secret_backend : vault_azure_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  environment : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  namespace : string prop;
  path : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  subscription_id : string prop;
  tenant_id : string prop;
  use_microsoft_graph_api : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?use_microsoft_graph_api:bool prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?use_microsoft_graph_api:bool prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
