(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_pipeline__timeouts
type azurerm_data_factory_pipeline

val azurerm_data_factory_pipeline :
  ?activities_json:string prop ->
  ?annotations:string prop list ->
  ?concurrency:float prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?moniter_metrics_after_duration:string prop ->
  ?parameters:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_pipeline__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  unit
