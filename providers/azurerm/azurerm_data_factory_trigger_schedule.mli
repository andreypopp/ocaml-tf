(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_trigger_schedule__pipeline
type azurerm_data_factory_trigger_schedule__schedule__monthly
type azurerm_data_factory_trigger_schedule__schedule
type azurerm_data_factory_trigger_schedule__timeouts
type azurerm_data_factory_trigger_schedule

type t = private {
  activated : bool prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  name : string prop;
  pipeline_name : string prop;
  pipeline_parameters : (string * string) list prop;
  start_time : string prop;
  time_zone : string prop;
}

val azurerm_data_factory_trigger_schedule :
  ?activated:bool prop ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?pipeline_name:string prop ->
  ?pipeline_parameters:(string * string prop) list ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?timeouts:azurerm_data_factory_trigger_schedule__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  pipeline:azurerm_data_factory_trigger_schedule__pipeline list ->
  schedule:azurerm_data_factory_trigger_schedule__schedule list ->
  string ->
  t
