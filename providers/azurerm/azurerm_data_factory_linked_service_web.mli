(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_web__timeouts
type azurerm_data_factory_linked_service_web

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  url : string prop;
  username : string prop;
}

val azurerm_data_factory_linked_service_web :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?password:string prop ->
  ?username:string prop ->
  ?timeouts:azurerm_data_factory_linked_service_web__timeouts ->
  authentication_type:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  url:string prop ->
  string ->
  t
