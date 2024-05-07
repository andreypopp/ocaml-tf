(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__deny_rule__denial_condition

val rules__deny_rule__denial_condition :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  rules__deny_rule__denial_condition

type rules__deny_rule

val rules__deny_rule :
  ?denied_permissions:string prop list ->
  ?denied_principals:string prop list ->
  ?exception_permissions:string prop list ->
  ?exception_principals:string prop list ->
  ?denial_condition:rules__deny_rule__denial_condition list ->
  unit ->
  rules__deny_rule

type rules

val rules :
  ?description:string prop ->
  ?deny_rule:rules__deny_rule list ->
  unit ->
  rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iam_deny_policy

val google_iam_deny_policy :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  rules:rules list ->
  unit ->
  google_iam_deny_policy

val yojson_of_google_iam_deny_policy : google_iam_deny_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
