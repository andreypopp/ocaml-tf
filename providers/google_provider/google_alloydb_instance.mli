(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_instance__client_connection_config__ssl_config
type google_alloydb_instance__client_connection_config
type google_alloydb_instance__machine_config
type google_alloydb_instance__query_insights_config
type google_alloydb_instance__read_pool_config
type google_alloydb_instance__timeouts
type google_alloydb_instance

val google_alloydb_instance :
  ?annotations:(string * string) list ->
  ?availability_type:string ->
  ?database_flags:(string * string) list ->
  ?display_name:string ->
  ?gce_zone:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_alloydb_instance__timeouts ->
  cluster:string ->
  instance_id:string ->
  instance_type:string ->
  client_connection_config:
    google_alloydb_instance__client_connection_config list ->
  machine_config:google_alloydb_instance__machine_config list ->
  query_insights_config:
    google_alloydb_instance__query_insights_config list ->
  read_pool_config:google_alloydb_instance__read_pool_config list ->
  string ->
  unit
