(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_sql_server__key_vault_connection_string

type azurerm_data_factory_linked_service_sql_server__key_vault_password

type azurerm_data_factory_linked_service_sql_server__timeouts
type azurerm_data_factory_linked_service_sql_server

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  user_name : string prop;
}

val azurerm_data_factory_linked_service_sql_server :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?user_name:string prop ->
  ?timeouts:azurerm_data_factory_linked_service_sql_server__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_connection_string:
    azurerm_data_factory_linked_service_sql_server__key_vault_connection_string
    list ->
  key_vault_password:
    azurerm_data_factory_linked_service_sql_server__key_vault_password
    list ->
  string ->
  t
