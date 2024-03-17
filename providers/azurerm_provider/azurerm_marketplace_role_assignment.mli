(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_marketplace_role_assignment__timeouts
type azurerm_marketplace_role_assignment

val azurerm_marketplace_role_assignment :
  ?condition:string ->
  ?condition_version:string ->
  ?delegated_managed_identity_resource_id:string ->
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?role_definition_id:string ->
  ?role_definition_name:string ->
  ?skip_service_principal_aad_check:bool ->
  ?timeouts:azurerm_marketplace_role_assignment__timeouts ->
  principal_id:string ->
  string ->
  unit
