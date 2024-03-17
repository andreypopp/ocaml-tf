(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_ml_engine_model__default_version
type google_ml_engine_model__timeouts
type google_ml_engine_model

val google_ml_engine_model :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?online_prediction_console_logging:bool prop ->
  ?online_prediction_logging:bool prop ->
  ?project:string prop ->
  ?regions:string prop list ->
  ?timeouts:google_ml_engine_model__timeouts ->
  name:string prop ->
  default_version:google_ml_engine_model__default_version list ->
  string ->
  unit
