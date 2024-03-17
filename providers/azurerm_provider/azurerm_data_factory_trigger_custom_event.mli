(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_custom_event__pipeline
type azurerm_data_factory_trigger_custom_event__timeouts
type azurerm_data_factory_trigger_custom_event

val azurerm_data_factory_trigger_custom_event :
  ?activated:bool ->
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?subject_begins_with:string ->
  ?subject_ends_with:string ->
  ?timeouts:azurerm_data_factory_trigger_custom_event__timeouts ->
  data_factory_id:string ->
  eventgrid_topic_id:string ->
  events:string list ->
  name:string ->
  pipeline:azurerm_data_factory_trigger_custom_event__pipeline list ->
  string ->
  unit
