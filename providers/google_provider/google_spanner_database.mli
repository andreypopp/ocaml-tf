(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database__encryption_config
type google_spanner_database__timeouts
type google_spanner_database

type t = private {
  database_dialect : string prop;
  ddl : string list prop;
  deletion_protection : bool prop;
  enable_drop_protection : bool prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  version_retention_period : string prop;
}

val google_spanner_database :
  ?database_dialect:string prop ->
  ?ddl:string prop list ->
  ?deletion_protection:bool prop ->
  ?enable_drop_protection:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?version_retention_period:string prop ->
  ?timeouts:google_spanner_database__timeouts ->
  instance:string prop ->
  name:string prop ->
  encryption_config:google_spanner_database__encryption_config list ->
  string ->
  t
