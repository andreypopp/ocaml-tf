(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_source_representation_instance__timeouts
type google_sql_source_representation_instance

val google_sql_source_representation_instance :
  ?ca_certificate:string ->
  ?client_certificate:string ->
  ?client_key:string ->
  ?dump_file_path:string ->
  ?password:string ->
  ?port:float ->
  ?username:string ->
  ?timeouts:google_sql_source_representation_instance__timeouts ->
  database_version:string ->
  host:string ->
  name:string ->
  string ->
  unit
