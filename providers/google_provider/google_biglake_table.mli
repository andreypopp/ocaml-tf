(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_biglake_table__hive_options__storage_descriptor
type google_biglake_table__hive_options
type google_biglake_table__timeouts
type google_biglake_table

type t = private {
  create_time : string prop;
  database : string prop;
  delete_time : string prop;
  etag : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val google_biglake_table :
  ?database:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:google_biglake_table__timeouts ->
  name:string prop ->
  hive_options:google_biglake_table__hive_options list ->
  string ->
  t
