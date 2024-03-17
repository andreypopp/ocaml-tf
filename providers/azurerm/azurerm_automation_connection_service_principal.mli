(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_service_principal__timeouts
type azurerm_automation_connection_service_principal

type t = private {
  application_id : string prop;
  automation_account_name : string prop;
  certificate_thumbprint : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
}

val azurerm_automation_connection_service_principal :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_connection_service_principal__timeouts ->
  application_id:string prop ->
  automation_account_name:string prop ->
  certificate_thumbprint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  string ->
  t
