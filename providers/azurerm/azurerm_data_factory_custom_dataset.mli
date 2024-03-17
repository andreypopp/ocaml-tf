(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_custom_dataset__linked_service
type azurerm_data_factory_custom_dataset__timeouts
type azurerm_data_factory_custom_dataset

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schema_json : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

val azurerm_data_factory_custom_dataset :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?schema_json:string prop ->
  ?timeouts:azurerm_data_factory_custom_dataset__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  type_:string prop ->
  type_properties_json:string prop ->
  linked_service:
    azurerm_data_factory_custom_dataset__linked_service list ->
  string ->
  t
