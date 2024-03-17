(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_services_vault_hyperv_site__timeouts
type azurerm_site_recovery_services_vault_hyperv_site

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
}

val azurerm_site_recovery_services_vault_hyperv_site :
  ?id:string prop ->
  ?timeouts:
    azurerm_site_recovery_services_vault_hyperv_site__timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t
