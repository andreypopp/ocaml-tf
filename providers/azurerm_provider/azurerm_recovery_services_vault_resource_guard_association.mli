(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_recovery_services_vault_resource_guard_association__timeouts

type azurerm_recovery_services_vault_resource_guard_association

type t = private {
  id : string prop;
  name : string prop;
  resource_guard_id : string prop;
  vault_id : string prop;
}

val azurerm_recovery_services_vault_resource_guard_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:
    azurerm_recovery_services_vault_resource_guard_association__timeouts ->
  resource_guard_id:string prop ->
  vault_id:string prop ->
  string ->
  t
