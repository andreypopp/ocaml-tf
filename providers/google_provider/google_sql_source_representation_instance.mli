(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_source_representation_instance__timeouts
type google_sql_source_representation_instance

val google_sql_source_representation_instance :
  ?ca_certificate:string prop ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?dump_file_path:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?username:string prop ->
  ?timeouts:google_sql_source_representation_instance__timeouts ->
  database_version:string prop ->
  host:string prop ->
  name:string prop ->
  string ->
  unit
