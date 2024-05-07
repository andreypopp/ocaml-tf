(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_version

val default_version : name:string prop -> unit -> default_version

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_ml_engine_model

val google_ml_engine_model :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?online_prediction_console_logging:bool prop ->
  ?online_prediction_logging:bool prop ->
  ?project:string prop ->
  ?regions:string prop list ->
  ?default_version:default_version list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_ml_engine_model

val yojson_of_google_ml_engine_model : google_ml_engine_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  online_prediction_console_logging : bool prop;
  online_prediction_logging : bool prop;
  project : string prop;
  regions : string list prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?online_prediction_console_logging:bool prop ->
  ?online_prediction_logging:bool prop ->
  ?project:string prop ->
  ?regions:string prop list ->
  ?default_version:default_version list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?online_prediction_console_logging:bool prop ->
  ?online_prediction_logging:bool prop ->
  ?project:string prop ->
  ?regions:string prop list ->
  ?default_version:default_version list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
