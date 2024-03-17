(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_confidential_ledger__azuread_based_service_principal
type azurerm_confidential_ledger__certificate_based_security_principal
type azurerm_confidential_ledger__timeouts
type azurerm_confidential_ledger

val azurerm_confidential_ledger :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_confidential_ledger__timeouts ->
  ledger_type:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  azuread_based_service_principal:
    azurerm_confidential_ledger__azuread_based_service_principal list ->
  certificate_based_security_principal:
    azurerm_confidential_ledger__certificate_based_security_principal
    list ->
  string ->
  unit
