(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_fabric__timeouts
type azurerm_site_recovery_fabric

val azurerm_site_recovery_fabric :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_fabric__timeouts ->
  location:string prop ->
  name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
