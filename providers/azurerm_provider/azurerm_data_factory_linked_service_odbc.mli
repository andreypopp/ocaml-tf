(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_odbc__basic_authentication
type azurerm_data_factory_linked_service_odbc__timeouts
type azurerm_data_factory_linked_service_odbc

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
}

val azurerm_data_factory_linked_service_odbc :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_linked_service_odbc__timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  basic_authentication:
    azurerm_data_factory_linked_service_odbc__basic_authentication
    list ->
  string ->
  t
