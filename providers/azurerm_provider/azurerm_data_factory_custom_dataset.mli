(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_custom_dataset__linked_service
type azurerm_data_factory_custom_dataset__timeouts
type azurerm_data_factory_custom_dataset

val azurerm_data_factory_custom_dataset :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?parameters:(string * string) list ->
  ?schema_json:string ->
  ?timeouts:azurerm_data_factory_custom_dataset__timeouts ->
  data_factory_id:string ->
  name:string ->
  type_:string ->
  type_properties_json:string ->
  linked_service:
    azurerm_data_factory_custom_dataset__linked_service list ->
  string ->
  unit
