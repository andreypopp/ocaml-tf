(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__access_boundary_rule__availability_condition

val rules__access_boundary_rule__availability_condition :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  rules__access_boundary_rule__availability_condition

type rules__access_boundary_rule

val rules__access_boundary_rule :
  ?available_permissions:string prop list ->
  ?available_resource:string prop ->
  availability_condition:
    rules__access_boundary_rule__availability_condition list ->
  unit ->
  rules__access_boundary_rule

type rules

val rules :
  ?description:string prop ->
  access_boundary_rule:rules__access_boundary_rule list ->
  unit ->
  rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iam_access_boundary_policy

val google_iam_access_boundary_policy :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:rules list ->
  unit ->
  google_iam_access_boundary_policy

val yojson_of_google_iam_access_boundary_policy :
  google_iam_access_boundary_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:rules list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:rules list ->
  string ->
  t Tf_core.resource
