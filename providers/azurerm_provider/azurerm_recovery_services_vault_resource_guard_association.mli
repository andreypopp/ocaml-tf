(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_recovery_services_vault_resource_guard_association__timeouts

type azurerm_recovery_services_vault_resource_guard_association

val azurerm_recovery_services_vault_resource_guard_association :
  ?id:string ->
  ?name:string ->
  ?timeouts:
    azurerm_recovery_services_vault_resource_guard_association__timeouts ->
  resource_guard_id:string ->
  vault_id:string ->
  string ->
  unit
