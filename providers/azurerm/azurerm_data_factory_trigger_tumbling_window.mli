(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type pipeline

val pipeline :
  ?parameters:(string * string prop) list ->
  name:string prop ->
  unit ->
  pipeline

type retry

val retry : ?interval:float prop -> count:float prop -> unit -> retry

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trigger_dependency

val trigger_dependency :
  ?offset:string prop ->
  ?size:string prop ->
  ?trigger_name:string prop ->
  unit ->
  trigger_dependency

type azurerm_data_factory_trigger_tumbling_window

val azurerm_data_factory_trigger_tumbling_window :
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?delay:string prop ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  frequency:string prop ->
  interval:float prop ->
  name:string prop ->
  start_time:string prop ->
  pipeline:pipeline list ->
  retry:retry list ->
  trigger_dependency:trigger_dependency list ->
  unit ->
  azurerm_data_factory_trigger_tumbling_window

val yojson_of_azurerm_data_factory_trigger_tumbling_window :
  azurerm_data_factory_trigger_tumbling_window -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?activated:bool prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?delay:string prop ->
  ?description:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  frequency:string prop ->
  interval:float prop ->
  name:string prop ->
  start_time:string prop ->
  pipeline:pipeline list ->
  retry:retry list ->
  trigger_dependency:trigger_dependency list ->
  string ->
  t
