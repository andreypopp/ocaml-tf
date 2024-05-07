(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_shield_application_layer_automatic_response

val aws_shield_application_layer_automatic_response :
  ?timeouts:timeouts ->
  action:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_shield_application_layer_automatic_response

val yojson_of_aws_shield_application_layer_automatic_response :
  aws_shield_application_layer_automatic_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  id : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  action:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  action:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
