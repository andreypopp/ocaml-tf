(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project__timeouts
type google_project

type t = private {
  auto_create_network : bool prop;
  billing_account : string prop;
  effective_labels : (string * string) list prop;
  folder_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  number : string prop;
  org_id : string prop;
  project_id : string prop;
  skip_delete : bool prop;
  terraform_labels : (string * string) list prop;
}

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
  t
