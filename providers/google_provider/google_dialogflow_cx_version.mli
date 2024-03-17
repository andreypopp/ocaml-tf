(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_version__timeouts

type google_dialogflow_cx_version__nlu_settings = {
  classification_threshold : float prop;
      (** classification_threshold *)
  model_training_mode : string prop;  (** model_training_mode *)
  model_type : string prop;  (** model_type *)
}

type google_dialogflow_cx_version

val google_dialogflow_cx_version :
  ?description:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:google_dialogflow_cx_version__timeouts ->
  display_name:string prop ->
  string ->
  unit
