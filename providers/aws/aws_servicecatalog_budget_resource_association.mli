(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_budget_resource_association

val aws_servicecatalog_budget_resource_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  budget_name:string prop ->
  resource_id:string prop ->
  unit ->
  aws_servicecatalog_budget_resource_association

val yojson_of_aws_servicecatalog_budget_resource_association :
  aws_servicecatalog_budget_resource_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  budget_name : string prop;
  id : string prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  budget_name:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  budget_name:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
