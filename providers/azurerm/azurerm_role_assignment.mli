(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_role_assignment

val azurerm_role_assignment :
  ?condition:string prop ->
  ?condition_version:string prop ->
  ?delegated_managed_identity_resource_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?principal_type:string prop ->
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  scope:string prop ->
  unit ->
  azurerm_role_assignment

val yojson_of_azurerm_role_assignment :
  azurerm_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  condition : string prop;
  condition_version : string prop;
  delegated_managed_identity_resource_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  role_definition_name : string prop;
  scope : string prop;
  skip_service_principal_aad_check : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?condition:string prop ->
  ?condition_version:string prop ->
  ?delegated_managed_identity_resource_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?principal_type:string prop ->
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?condition:string prop ->
  ?condition_version:string prop ->
  ?delegated_managed_identity_resource_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?principal_type:string prop ->
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
