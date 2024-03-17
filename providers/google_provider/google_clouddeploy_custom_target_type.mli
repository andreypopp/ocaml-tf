(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__git

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules__google_cloud_storage

type google_clouddeploy_custom_target_type__custom_actions__include_skaffold_modules

type google_clouddeploy_custom_target_type__custom_actions
type google_clouddeploy_custom_target_type__timeouts
type google_clouddeploy_custom_target_type

val google_clouddeploy_custom_target_type :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_clouddeploy_custom_target_type__timeouts ->
  location:string ->
  name:string ->
  custom_actions:
    google_clouddeploy_custom_target_type__custom_actions list ->
  string ->
  unit
