(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_marketplace_role_assignment

val azurerm_marketplace_role_assignment :
  ?condition:string prop ->
  ?condition_version:string prop ->
  ?delegated_managed_identity_resource_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  unit ->
  azurerm_marketplace_role_assignment

val yojson_of_azurerm_marketplace_role_assignment :
  azurerm_marketplace_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  string ->
  t
