(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_pipeline__timeouts
type azurerm_data_factory_pipeline

val azurerm_data_factory_pipeline :
  ?activities_json:string ->
  ?annotations:string list ->
  ?concurrency:float ->
  ?description:string ->
  ?folder:string ->
  ?moniter_metrics_after_duration:string ->
  ?parameters:(string * string) list ->
  ?variables:(string * string) list ->
  ?timeouts:azurerm_data_factory_pipeline__timeouts ->
  data_factory_id:string ->
  name:string ->
  string ->
  unit
