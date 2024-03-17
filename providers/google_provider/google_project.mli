(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project__timeouts
type google_project

val google_project :
  ?auto_create_network:bool prop ->
  ?billing_account:string prop ->
  ?folder_id:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?org_id:string prop ->
  ?skip_delete:bool prop ->
  ?timeouts:google_project__timeouts ->
  name:string prop ->
  project_id:string prop ->
  string ->
  unit
