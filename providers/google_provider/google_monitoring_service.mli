(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_service__basic_service
type google_monitoring_service__timeouts

type google_monitoring_service__telemetry = {
  resource_name : string;  (** resource_name *)
}
[@@deriving yojson_of]

type google_monitoring_service

val google_monitoring_service :
  ?display_name:string ->
  ?user_labels:(string * string) list ->
  ?timeouts:google_monitoring_service__timeouts ->
  service_id:string ->
  basic_service:google_monitoring_service__basic_service list ->
  string ->
  unit
