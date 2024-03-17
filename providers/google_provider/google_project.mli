(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project__timeouts
type google_project

val google_project :
  ?auto_create_network:bool ->
  ?billing_account:string ->
  ?folder_id:string ->
  ?labels:(string * string) list ->
  ?org_id:string ->
  ?timeouts:google_project__timeouts ->
  name:string ->
  project_id:string ->
  string ->
  unit
