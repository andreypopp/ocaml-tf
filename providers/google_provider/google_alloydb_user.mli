(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_user__timeouts
type google_alloydb_user

val google_alloydb_user :
  ?database_roles:string prop list ->
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:google_alloydb_user__timeouts ->
  cluster:string prop ->
  user_id:string prop ->
  user_type:string prop ->
  string ->
  unit
