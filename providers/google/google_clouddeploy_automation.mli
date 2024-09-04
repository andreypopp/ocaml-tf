(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__advance_rollout_rule

val rules__advance_rollout_rule :
  ?source_phases:string prop list ->
  ?wait:string prop ->
  id:string prop ->
  unit ->
  rules__advance_rollout_rule

type rules__promote_release_rule

val rules__promote_release_rule :
  ?destination_phase:string prop ->
  ?destination_target_id:string prop ->
  ?wait:string prop ->
  id:string prop ->
  unit ->
  rules__promote_release_rule

type rules

val rules :
  ?advance_rollout_rule:rules__advance_rollout_rule list ->
  ?promote_release_rule:rules__promote_release_rule list ->
  unit ->
  rules

type selector__targets

val selector__targets :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  unit ->
  selector__targets

type selector

val selector : targets:selector__targets list -> unit -> selector

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_clouddeploy_automation

val google_clouddeploy_automation :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?timeouts:timeouts ->
  delivery_pipeline:string prop ->
  location:string prop ->
  name:string prop ->
  service_account:string prop ->
  rules:rules list ->
  selector:selector list ->
  unit ->
  google_clouddeploy_automation

val yojson_of_google_clouddeploy_automation :
  google_clouddeploy_automation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  delivery_pipeline : string prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  suspended : bool prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?timeouts:timeouts ->
  delivery_pipeline:string prop ->
  location:string prop ->
  name:string prop ->
  service_account:string prop ->
  rules:rules list ->
  selector:selector list ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?timeouts:timeouts ->
  delivery_pipeline:string prop ->
  location:string prop ->
  name:string prop ->
  service_account:string prop ->
  rules:rules list ->
  selector:selector list ->
  string ->
  t Tf_core.resource
