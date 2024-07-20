(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_principal_key

val service_principal_key :
  ?secret_version:string prop ->
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  service_principal_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_credential_service_principal

val azurerm_data_factory_credential_service_principal :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_principal_key:service_principal_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  service_principal_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_data_factory_credential_service_principal

val yojson_of_azurerm_data_factory_credential_service_principal :
  azurerm_data_factory_credential_service_principal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  service_principal_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_principal_key:service_principal_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  service_principal_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_principal_key:service_principal_key list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  service_principal_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
