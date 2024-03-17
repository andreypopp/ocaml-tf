(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_version__timeouts

type google_dialogflow_cx_version__nlu_settings = {
  classification_threshold : float;  (** classification_threshold *)
  model_training_mode : string;  (** model_training_mode *)
  model_type : string;  (** model_type *)
}
[@@deriving yojson_of]

type google_dialogflow_cx_version

val google_dialogflow_cx_version :
  ?description:string ->
  ?parent:string ->
  ?timeouts:google_dialogflow_cx_version__timeouts ->
  display_name:string ->
  string ->
  unit
