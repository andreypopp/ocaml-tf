(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pipeline

val pipeline :
  ?parameters:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  pipeline

type schedule__monthly

val schedule__monthly :
  ?week:float prop ->
  weekday:string prop ->
  unit ->
  schedule__monthly

type schedule

val schedule :
  ?days_of_month:float prop list ->
  ?days_of_week:string prop list ->
  ?hours:float prop list ->
  ?minutes:float prop list ->
  ?monthly:schedule__monthly list ->
  unit ->
  schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_trigger_schedule

val azurerm_data_factory_trigger_schedule :
  ?activated:bool prop ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?pipeline_name:string prop ->
  ?pipeline_parameters:string prop Tf_core.assoc ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?pipeline:pipeline list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_trigger_schedule

val yojson_of_azurerm_data_factory_trigger_schedule :
  azurerm_data_factory_trigger_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  pipeline_parameters : string Tf_core.assoc prop;
  start_time : string prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activated:bool prop ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?pipeline_name:string prop ->
  ?pipeline_parameters:string prop Tf_core.assoc ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?pipeline:pipeline list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?activated:bool prop ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?pipeline_name:string prop ->
  ?pipeline_parameters:string prop Tf_core.assoc ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?pipeline:pipeline list ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
