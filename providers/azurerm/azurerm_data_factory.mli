(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_configuration

val github_configuration :
  ?git_url:string prop ->
  ?publishing_enabled:bool prop ->
  account_name:string prop ->
  branch_name:string prop ->
  repository_name:string prop ->
  root_folder:string prop ->
  unit ->
  github_configuration

type global_parameter

val global_parameter :
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  global_parameter

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vsts_configuration

val vsts_configuration :
  ?publishing_enabled:bool prop ->
  account_name:string prop ->
  branch_name:string prop ->
  project_name:string prop ->
  repository_name:string prop ->
  root_folder:string prop ->
  tenant_id:string prop ->
  unit ->
  vsts_configuration

type azurerm_data_factory

val azurerm_data_factory :
  ?customer_managed_key_id:string prop ->
  ?customer_managed_key_identity_id:string prop ->
  ?id:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_enabled:bool prop ->
  ?purview_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  github_configuration:github_configuration list ->
  global_parameter:global_parameter list ->
  identity:identity list ->
  vsts_configuration:vsts_configuration list ->
  unit ->
  azurerm_data_factory

val yojson_of_azurerm_data_factory : azurerm_data_factory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  customer_managed_key_id : string prop;
  customer_managed_key_identity_id : string prop;
  id : string prop;
  location : string prop;
  managed_virtual_network_enabled : bool prop;
  name : string prop;
  public_network_enabled : bool prop;
  purview_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_managed_key_id:string prop ->
  ?customer_managed_key_identity_id:string prop ->
  ?id:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_enabled:bool prop ->
  ?purview_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  github_configuration:github_configuration list ->
  global_parameter:global_parameter list ->
  identity:identity list ->
  vsts_configuration:vsts_configuration list ->
  string ->
  t

val make :
  ?customer_managed_key_id:string prop ->
  ?customer_managed_key_identity_id:string prop ->
  ?id:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_enabled:bool prop ->
  ?purview_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  github_configuration:github_configuration list ->
  global_parameter:global_parameter list ->
  identity:identity list ->
  vsts_configuration:vsts_configuration list ->
  string ->
  t Tf_core.resource
