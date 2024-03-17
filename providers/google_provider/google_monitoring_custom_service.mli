(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_custom_service__telemetry
type google_monitoring_custom_service__timeouts
type google_monitoring_custom_service

val google_monitoring_custom_service :
  ?display_name:string ->
  ?id:string ->
  ?project:string ->
  ?service_id:string ->
  ?user_labels:(string * string) list ->
  ?timeouts:google_monitoring_custom_service__timeouts ->
  telemetry:google_monitoring_custom_service__telemetry list ->
  string ->
  unit
