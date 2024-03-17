(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_instance__client_connection_config__ssl_config
type google_alloydb_instance__client_connection_config
type google_alloydb_instance__machine_config
type google_alloydb_instance__query_insights_config
type google_alloydb_instance__read_pool_config
type google_alloydb_instance__timeouts
type google_alloydb_instance

type t = private {
  annotations : (string * string) list prop;
  availability_type : string prop;
  cluster : string prop;
  create_time : string prop;
  database_flags : (string * string) list prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  gce_zone : string prop;
  id : string prop;
  instance_id : string prop;
  instance_type : string prop;
  ip_address : string prop;
  labels : (string * string) list prop;
  name : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

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
  t
