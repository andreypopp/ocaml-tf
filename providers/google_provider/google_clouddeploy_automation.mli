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
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?timeouts:google_clouddeploy_automation__timeouts ->
  delivery_pipeline:string prop ->
  location:string prop ->
  name:string prop ->
  service_account:string prop ->
  rules:google_clouddeploy_automation__rules list ->
  selector:google_clouddeploy_automation__selector list ->
  string ->
  unit
