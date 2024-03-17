(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts

type azurerm_data_factory_linked_service_data_lake_storage_gen2

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  storage_account_key : string prop;
  tenant : string prop;
  url : string prop;
  use_managed_identity : bool prop;
}

val azurerm_data_factory_linked_service_data_lake_storage_gen2 :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?storage_account_key:string prop ->
  ?tenant:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:
    azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  string ->
  t
