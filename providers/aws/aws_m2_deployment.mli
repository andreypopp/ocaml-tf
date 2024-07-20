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

type aws_m2_deployment

val aws_m2_deployment :
  ?force_stop:bool prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  application_version:float prop ->
  environment_id:string prop ->
  start:bool prop ->
  unit ->
  aws_m2_deployment

val yojson_of_aws_m2_deployment : aws_m2_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  application_version : float prop;
  deployment_id : string prop;
  environment_id : string prop;
  force_stop : bool prop;
  id : string prop;
  start : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_stop:bool prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  application_version:float prop ->
  environment_id:string prop ->
  start:bool prop ->
  string ->
  t

val make :
  ?force_stop:bool prop ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  application_version:float prop ->
  environment_id:string prop ->
  start:bool prop ->
  string ->
  t Tf_core.resource
