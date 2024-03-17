(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_user__timeouts
type google_alloydb_user

val google_alloydb_user :
  ?database_roles:string list ->
  ?id:string ->
  ?password:string ->
  ?timeouts:google_alloydb_user__timeouts ->
  cluster:string ->
  user_id:string ->
  user_type:string ->
  string ->
  unit
