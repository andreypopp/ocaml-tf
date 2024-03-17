(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_role_assignment__timeouts
type azurerm_role_assignment

val azurerm_role_assignment :
  ?condition:string ->
  ?condition_version:string ->
  ?delegated_managed_identity_resource_id:string ->
  ?description:string ->
  ?timeouts:azurerm_role_assignment__timeouts ->
  principal_id:string ->
  scope:string ->
  string ->
  unit
