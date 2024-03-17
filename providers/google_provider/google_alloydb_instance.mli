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
  ?annotations:(string * string prop) list ->
  ?availability_type:string prop ->
  ?database_flags:(string * string prop) list ->
  ?display_name:string prop ->
  ?gce_zone:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:google_alloydb_instance__timeouts ->
  cluster:string prop ->
  instance_id:string prop ->
  instance_type:string prop ->
  client_connection_config:
    google_alloydb_instance__client_connection_config list ->
  machine_config:google_alloydb_instance__machine_config list ->
  query_insights_config:
    google_alloydb_instance__query_insights_config list ->
  read_pool_config:google_alloydb_instance__read_pool_config list ->
  string ->
  unit
