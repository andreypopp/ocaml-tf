(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_project_info__timeouts
type google_billing_project_info

type t = private {
  billing_account : string prop;
  id : string prop;
  project : string prop;
}

val google_billing_project_info :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_billing_project_info__timeouts ->
  billing_account:string prop ->
  string ->
  t
