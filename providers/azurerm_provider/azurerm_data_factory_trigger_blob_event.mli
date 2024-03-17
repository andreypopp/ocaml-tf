(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_blob_event__pipeline
type azurerm_data_factory_trigger_blob_event__timeouts
type azurerm_data_factory_trigger_blob_event

val azurerm_data_factory_trigger_blob_event :
  ?activated:bool ->
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?blob_path_begins_with:string ->
  ?blob_path_ends_with:string ->
  ?description:string ->
  ?id:string ->
  ?ignore_empty_blobs:bool ->
  ?timeouts:azurerm_data_factory_trigger_blob_event__timeouts ->
  data_factory_id:string ->
  events:string list ->
  name:string ->
  storage_account_id:string ->
  pipeline:azurerm_data_factory_trigger_blob_event__pipeline list ->
  string ->
  unit
