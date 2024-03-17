(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_tumbling_window__pipeline
type azurerm_data_factory_trigger_tumbling_window__retry
type azurerm_data_factory_trigger_tumbling_window__timeouts
type azurerm_data_factory_trigger_tumbling_window__trigger_dependency
type azurerm_data_factory_trigger_tumbling_window

type t = private {
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  delay : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  max_concurrency : float prop;
  name : string prop;
  start_time : string prop;
}

val azurerm_data_factory_trigger_tumbling_window :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?delay:string prop ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?timeouts:azurerm_data_factory_trigger_tumbling_window__timeouts ->
  data_factory_id:string prop ->
  frequency:string prop ->
  interval:float prop ->
  name:string prop ->
  start_time:string prop ->
  pipeline:
    azurerm_data_factory_trigger_tumbling_window__pipeline list ->
  retry:azurerm_data_factory_trigger_tumbling_window__retry list ->
  trigger_dependency:
    azurerm_data_factory_trigger_tumbling_window__trigger_dependency
    list ->
  string ->
  t
