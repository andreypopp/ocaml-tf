(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_automation__rules__advance_rollout_rule
type google_clouddeploy_automation__rules__promote_release_rule
type google_clouddeploy_automation__rules
type google_clouddeploy_automation__selector__targets
type google_clouddeploy_automation__selector
type google_clouddeploy_automation__timeouts
type google_clouddeploy_automation

val google_clouddeploy_automation :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?suspended:bool ->
  ?timeouts:google_clouddeploy_automation__timeouts ->
  delivery_pipeline:string ->
  location:string ->
  name:string ->
  service_account:string ->
  rules:google_clouddeploy_automation__rules list ->
  selector:google_clouddeploy_automation__selector list ->
  string ->
  unit
