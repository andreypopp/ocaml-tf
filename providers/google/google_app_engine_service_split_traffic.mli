(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_service_split_traffic__split
type google_app_engine_service_split_traffic__timeouts
type google_app_engine_service_split_traffic

type t = private {
  id : string prop;
  migrate_traffic : bool prop;
  project : string prop;
  service : string prop;
}

val google_app_engine_service_split_traffic :
  ?id:string prop ->
  ?migrate_traffic:bool prop ->
  ?project:string prop ->
  ?timeouts:google_app_engine_service_split_traffic__timeouts ->
  service:string prop ->
  split:google_app_engine_service_split_traffic__split list ->
  string ->
  t
