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

type google_apigee_sharedflow_deployment

val google_apigee_sharedflow_deployment :
  ?id:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  org_id:string prop ->
  revision:string prop ->
  sharedflow_id:string prop ->
  unit ->
  google_apigee_sharedflow_deployment

val yojson_of_google_apigee_sharedflow_deployment :
  google_apigee_sharedflow_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  environment : string prop;
  id : string prop;
  org_id : string prop;
  revision : string prop;
  service_account : string prop;
  sharedflow_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  org_id:string prop ->
  revision:string prop ->
  sharedflow_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  org_id:string prop ->
  revision:string prop ->
  sharedflow_id:string prop ->
  string ->
  t Tf_core.resource
