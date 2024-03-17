(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork_iam_binding__condition
type google_compute_subnetwork_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
  subnetwork : string prop;
}

val google_compute_subnetwork_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  members:string prop list ->
  role:string prop ->
  subnetwork:string prop ->
  condition:google_compute_subnetwork_iam_binding__condition list ->
  string ->
  t
