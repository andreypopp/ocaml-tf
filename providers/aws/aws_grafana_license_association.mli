(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_grafana_license_association

val aws_grafana_license_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  license_type:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_license_association

val yojson_of_aws_grafana_license_association :
  aws_grafana_license_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  free_trial_expiration : string prop;
  id : string prop;
  license_expiration : string prop;
  license_type : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  license_type:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  license_type:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
