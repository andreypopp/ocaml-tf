(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_tumbling_window__pipeline
type azurerm_data_factory_trigger_tumbling_window__retry
type azurerm_data_factory_trigger_tumbling_window__timeouts
type azurerm_data_factory_trigger_tumbling_window__trigger_dependency
type azurerm_data_factory_trigger_tumbling_window

val azurerm_data_factory_trigger_tumbling_window :
  ?activated:bool ->
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?delay:string ->
  ?description:string ->
  ?end_time:string ->
  ?id:string ->
  ?max_concurrency:float ->
  ?timeouts:azurerm_data_factory_trigger_tumbling_window__timeouts ->
  data_factory_id:string ->
  frequency:string ->
  interval:float ->
  name:string ->
  start_time:string ->
  pipeline:
    azurerm_data_factory_trigger_tumbling_window__pipeline list ->
  retry:azurerm_data_factory_trigger_tumbling_window__retry list ->
  trigger_dependency:
    azurerm_data_factory_trigger_tumbling_window__trigger_dependency
    list ->
  string ->
  unit
