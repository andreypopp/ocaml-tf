(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_certificate__timeouts
type azurerm_automation_connection_certificate

val azurerm_automation_connection_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_connection_certificate__timeouts ->
  automation_account_name:string prop ->
  automation_certificate_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  string ->
  unit
