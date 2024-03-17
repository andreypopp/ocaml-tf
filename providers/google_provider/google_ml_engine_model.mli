(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_ml_engine_model__default_version
type google_ml_engine_model__timeouts
type google_ml_engine_model

val google_ml_engine_model :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?online_prediction_console_logging:bool ->
  ?online_prediction_logging:bool ->
  ?project:string ->
  ?regions:string list ->
  ?timeouts:google_ml_engine_model__timeouts ->
  name:string ->
  default_version:google_ml_engine_model__default_version list ->
  string ->
  unit
