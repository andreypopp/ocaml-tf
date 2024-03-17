(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_dashboard__timeouts
type google_monitoring_dashboard

val google_monitoring_dashboard :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_monitoring_dashboard__timeouts ->
  dashboard_json:string prop ->
  string ->
  unit
