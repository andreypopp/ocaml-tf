(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_schedule__pipeline
type azurerm_data_factory_trigger_schedule__schedule__monthly
type azurerm_data_factory_trigger_schedule__schedule
type azurerm_data_factory_trigger_schedule__timeouts
type azurerm_data_factory_trigger_schedule

val azurerm_data_factory_trigger_schedule :
  ?activated:bool ->
  ?annotations:string list ->
  ?description:string ->
  ?end_time:string ->
  ?frequency:string ->
  ?interval:float ->
  ?time_zone:string ->
  ?timeouts:azurerm_data_factory_trigger_schedule__timeouts ->
  data_factory_id:string ->
  name:string ->
  pipeline:azurerm_data_factory_trigger_schedule__pipeline list ->
  schedule:azurerm_data_factory_trigger_schedule__schedule list ->
  string ->
  unit
