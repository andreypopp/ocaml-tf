(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type linked_service

val linked_service :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  linked_service

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_custom_dataset

val azurerm_data_factory_custom_dataset :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_json:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  linked_service:linked_service list ->
  unit ->
  azurerm_data_factory_custom_dataset

val yojson_of_azurerm_data_factory_custom_dataset :
  azurerm_data_factory_custom_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  schema_json : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_json:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  linked_service:linked_service list ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_json:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  linked_service:linked_service list ->
  string ->
  t Tf_core.resource
