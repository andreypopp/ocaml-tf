(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_delivery_pipeline_iam_binding__condition
type google_clouddeploy_delivery_pipeline_iam_binding

val google_clouddeploy_delivery_pipeline_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  members:string list ->
  name:string ->
  role:string ->
  condition:
    google_clouddeploy_delivery_pipeline_iam_binding__condition list ->
  string ->
  unit
