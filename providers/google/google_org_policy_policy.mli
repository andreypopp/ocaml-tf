(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dry_run_spec__rules__condition

val dry_run_spec__rules__condition :
  ?description:string prop ->
  ?expression:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  unit ->
  dry_run_spec__rules__condition

type dry_run_spec__rules__values

val dry_run_spec__rules__values :
  ?allowed_values:string prop list ->
  ?denied_values:string prop list ->
  unit ->
  dry_run_spec__rules__values

type dry_run_spec__rules

val dry_run_spec__rules :
  ?allow_all:string prop ->
  ?deny_all:string prop ->
  ?enforce:string prop ->
  ?condition:dry_run_spec__rules__condition list ->
  ?values:dry_run_spec__rules__values list ->
  unit ->
  dry_run_spec__rules

type dry_run_spec

val dry_run_spec :
  ?inherit_from_parent:bool prop ->
  ?reset:bool prop ->
  ?rules:dry_run_spec__rules list ->
  unit ->
  dry_run_spec

type spec__rules__condition

val spec__rules__condition :
  ?description:string prop ->
  ?expression:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  unit ->
  spec__rules__condition

type spec__rules__values

val spec__rules__values :
  ?allowed_values:string prop list ->
  ?denied_values:string prop list ->
  unit ->
  spec__rules__values

type spec__rules

val spec__rules :
  ?allow_all:string prop ->
  ?deny_all:string prop ->
  ?enforce:string prop ->
  ?condition:spec__rules__condition list ->
  ?values:spec__rules__values list ->
  unit ->
  spec__rules

type spec

val spec :
  ?inherit_from_parent:bool prop ->
  ?reset:bool prop ->
  ?rules:spec__rules list ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_org_policy_policy

val google_org_policy_policy :
  ?id:string prop ->
  ?dry_run_spec:dry_run_spec list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_org_policy_policy

val yojson_of_google_org_policy_policy :
  google_org_policy_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?dry_run_spec:dry_run_spec list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?dry_run_spec:dry_run_spec list ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
