(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_service__basic_service
type google_monitoring_service__timeouts

type google_monitoring_service__telemetry = {
  resource_name : string prop;  (** resource_name *)
}

type google_monitoring_service

val google_monitoring_service :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:google_monitoring_service__timeouts ->
  service_id:string prop ->
  basic_service:google_monitoring_service__basic_service list ->
  string ->
  unit
