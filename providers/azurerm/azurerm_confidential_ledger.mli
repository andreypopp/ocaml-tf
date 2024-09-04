(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azuread_based_service_principal

val azuread_based_service_principal :
  ledger_role_name:string prop ->
  principal_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azuread_based_service_principal

type certificate_based_security_principal

val certificate_based_security_principal :
  ledger_role_name:string prop ->
  pem_public_key:string prop ->
  unit ->
  certificate_based_security_principal

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_confidential_ledger

val azurerm_confidential_ledger :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate_based_security_principal:
    certificate_based_security_principal list ->
  ?timeouts:timeouts ->
  ledger_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azuread_based_service_principal:
    azuread_based_service_principal list ->
  unit ->
  azurerm_confidential_ledger

val yojson_of_azurerm_confidential_ledger :
  azurerm_confidential_ledger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity_service_endpoint : string prop;
  ledger_endpoint : string prop;
  ledger_type : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate_based_security_principal:
    certificate_based_security_principal list ->
  ?timeouts:timeouts ->
  ledger_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azuread_based_service_principal:
    azuread_based_service_principal list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate_based_security_principal:
    certificate_based_security_principal list ->
  ?timeouts:timeouts ->
  ledger_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azuread_based_service_principal:
    azuread_based_service_principal list ->
  string ->
  t Tf_core.resource
