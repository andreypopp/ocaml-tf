(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_custom_service__telemetry
type google_monitoring_custom_service__timeouts
type google_monitoring_custom_service

type t = private {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  user_labels : (string * string) list prop;
}

val google_monitoring_custom_service :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?service_id:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:google_monitoring_custom_service__timeouts ->
  telemetry:google_monitoring_custom_service__telemetry list ->
  string ->
  t
