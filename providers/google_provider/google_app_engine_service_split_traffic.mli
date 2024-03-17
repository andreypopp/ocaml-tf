(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_service_split_traffic__split
type google_app_engine_service_split_traffic__timeouts
type google_app_engine_service_split_traffic

val google_app_engine_service_split_traffic :
  ?migrate_traffic:bool ->
  ?timeouts:google_app_engine_service_split_traffic__timeouts ->
  service:string ->
  split:google_app_engine_service_split_traffic__split list ->
  string ->
  unit
