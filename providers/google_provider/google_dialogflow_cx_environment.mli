(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_cx_environment__timeouts
type google_dialogflow_cx_environment__version_configs
type google_dialogflow_cx_environment

val google_dialogflow_cx_environment :
  ?description:string ->
  ?id:string ->
  ?parent:string ->
  ?timeouts:google_dialogflow_cx_environment__timeouts ->
  display_name:string ->
  version_configs:
    google_dialogflow_cx_environment__version_configs list ->
  string ->
  unit
