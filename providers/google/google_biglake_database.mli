(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_biglake_database__hive_options
type google_biglake_database__timeouts
type google_biglake_database

type t = private {
  catalog : string prop;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val google_biglake_database :
  ?id:string prop ->
  ?timeouts:google_biglake_database__timeouts ->
  catalog:string prop ->
  name:string prop ->
  type_:string prop ->
  hive_options:google_biglake_database__hive_options list ->
  string ->
  t
