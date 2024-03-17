(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_monitored_project__timeouts
type google_monitoring_monitored_project

type t = private {
  create_time : string prop;
  id : string prop;
  metrics_scope : string prop;
  name : string prop;
}

val google_monitoring_monitored_project :
  ?id:string prop ->
  ?timeouts:google_monitoring_monitored_project__timeouts ->
  metrics_scope:string prop ->
  name:string prop ->
  string ->
  t
