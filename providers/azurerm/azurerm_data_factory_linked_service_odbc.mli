(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic_authentication

val basic_authentication :
  password:string prop ->
  username:string prop ->
  unit ->
  basic_authentication

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_odbc

val azurerm_data_factory_linked_service_odbc :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?basic_authentication:basic_authentication list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_odbc

val yojson_of_azurerm_data_factory_linked_service_odbc :
  azurerm_data_factory_linked_service_odbc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?basic_authentication:basic_authentication list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?basic_authentication:basic_authentication list ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
