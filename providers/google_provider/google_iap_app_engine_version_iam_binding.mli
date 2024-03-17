(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_app_engine_version_iam_binding__condition
type google_iap_app_engine_version_iam_binding

val google_iap_app_engine_version_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  members:string prop list ->
  role:string prop ->
  service:string prop ->
  version_id:string prop ->
  condition:google_iap_app_engine_version_iam_binding__condition list ->
  string ->
  unit
