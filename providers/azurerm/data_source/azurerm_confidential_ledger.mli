(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azuread_based_service_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
}

type certificate_based_security_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  pem_public_key : string prop;  (** pem_public_key *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_confidential_ledger

val azurerm_confidential_ledger :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_confidential_ledger

val yojson_of_azurerm_confidential_ledger :
  azurerm_confidential_ledger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  azuread_based_service_principal :
    azuread_based_service_principal list prop;
  certificate_based_security_principal :
    certificate_based_security_principal list prop;
  id : string prop;
  identity_service_endpoint : string prop;
  ledger_endpoint : string prop;
  ledger_type : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
