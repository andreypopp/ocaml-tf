(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container

val container :
  ?container_group_name:string prop -> unit -> container

type environment_variable

val environment_variable :
  ?secure_value:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  environment_variable

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type storage_account

val storage_account :
  key:string prop -> name:string prop -> unit -> storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_resource_deployment_script_azure_cli

val azurerm_resource_deployment_script_azure_cli :
  ?cleanup_preference:string prop ->
  ?command_line:string prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?primary_script_uri:string prop ->
  ?script_content:string prop ->
  ?supporting_script_uris:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout:string prop ->
  ?container:container list ->
  ?identity:identity list ->
  ?storage_account:storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  retention_interval:string prop ->
  version:string prop ->
  environment_variable:environment_variable list ->
  unit ->
  azurerm_resource_deployment_script_azure_cli

val yojson_of_azurerm_resource_deployment_script_azure_cli :
  azurerm_resource_deployment_script_azure_cli -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cleanup_preference : string prop;
  command_line : string prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outputs : string prop;
  primary_script_uri : string prop;
  resource_group_name : string prop;
  retention_interval : string prop;
  script_content : string prop;
  supporting_script_uris : string list prop;
  tags : string Tf_core.assoc prop;
  timeout : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cleanup_preference:string prop ->
  ?command_line:string prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?primary_script_uri:string prop ->
  ?script_content:string prop ->
  ?supporting_script_uris:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout:string prop ->
  ?container:container list ->
  ?identity:identity list ->
  ?storage_account:storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  retention_interval:string prop ->
  version:string prop ->
  environment_variable:environment_variable list ->
  string ->
  t

val make :
  ?cleanup_preference:string prop ->
  ?command_line:string prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?primary_script_uri:string prop ->
  ?script_content:string prop ->
  ?supporting_script_uris:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeout:string prop ->
  ?container:container list ->
  ?identity:identity list ->
  ?storage_account:storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  retention_interval:string prop ->
  version:string prop ->
  environment_variable:environment_variable list ->
  string ->
  t Tf_core.resource
