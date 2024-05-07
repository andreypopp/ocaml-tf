(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_pipeline

val yojson_of_azurerm_data_factory_pipeline :
  azurerm_data_factory_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activities_json : string prop;
  annotations : string list prop;
  concurrency : float prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  moniter_metrics_after_duration : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  variables : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?activities_json:string prop ->
  ?annotations:string prop list ->
  ?concurrency:float prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?moniter_metrics_after_duration:string prop ->
  ?parameters:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?activities_json:string prop ->
  ?annotations:string prop list ->
  ?concurrency:float prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?moniter_metrics_after_duration:string prop ->
  ?parameters:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
