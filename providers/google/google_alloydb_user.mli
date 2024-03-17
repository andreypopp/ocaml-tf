(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_user__timeouts
type google_alloydb_user

type t = private {
  cluster : string prop;
  database_roles : string list prop;
  id : string prop;
  name : string prop;
  password : string prop;
  user_id : string prop;
  user_type : string prop;
}

val google_alloydb_user :
  ?database_roles:string prop list ->
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:google_alloydb_user__timeouts ->
  cluster:string prop ->
  user_id:string prop ->
  user_type:string prop ->
  string ->
  t
