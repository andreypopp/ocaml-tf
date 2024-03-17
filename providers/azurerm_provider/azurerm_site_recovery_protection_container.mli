(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_protection_container__timeouts
type azurerm_site_recovery_protection_container

type t = private {
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

val azurerm_site_recovery_protection_container :
  ?id:string prop ->
  ?timeouts:azurerm_site_recovery_protection_container__timeouts ->
  name:string prop ->
  recovery_fabric_name:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
