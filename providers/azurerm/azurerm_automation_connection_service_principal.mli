(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_connection_service_principal

val azurerm_automation_connection_service_principal :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  automation_account_name:string prop ->
  certificate_thumbprint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_automation_connection_service_principal

val yojson_of_azurerm_automation_connection_service_principal :
  azurerm_automation_connection_service_principal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  automation_account_name:string prop ->
  certificate_thumbprint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  automation_account_name:string prop ->
  certificate_thumbprint:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
