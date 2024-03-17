(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_default_service_accounts__timeouts
type google_project_default_service_accounts

type t = private {
  action : string prop;
  id : string prop;
  project : string prop;
  restore_policy : string prop;
  service_accounts : (string * string) list prop;
}

val google_project_default_service_accounts :
  ?id:string prop ->
  ?restore_policy:string prop ->
  ?timeouts:google_project_default_service_accounts__timeouts ->
  action:string prop ->
  project:string prop ->
  string ->
  t
