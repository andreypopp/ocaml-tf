(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nlu_settings = {
  classification_threshold : float prop;
      (** classification_threshold *)
  model_training_mode : string prop;  (** model_training_mode *)
  model_type : string prop;  (** model_type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dialogflow_cx_version

val google_dialogflow_cx_version :
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_dialogflow_cx_version

val yojson_of_google_dialogflow_cx_version :
  google_dialogflow_cx_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  nlu_settings : nlu_settings list prop;
  parent : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
