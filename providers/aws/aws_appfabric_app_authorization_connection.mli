(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tenant = {
  tenant_display_name : string prop;  (** tenant_display_name *)
  tenant_identifier : string prop;  (** tenant_identifier *)
}

type auth_request

val auth_request :
  code:string prop ->
  redirect_uri:string prop ->
  unit ->
  auth_request

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_appfabric_app_authorization_connection

val aws_appfabric_app_authorization_connection :
  ?auth_request:auth_request list ->
  ?timeouts:timeouts ->
  app_authorization_arn:string prop ->
  app_bundle_arn:string prop ->
  unit ->
  aws_appfabric_app_authorization_connection

val yojson_of_aws_appfabric_app_authorization_connection :
  aws_appfabric_app_authorization_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app : string prop;
  app_authorization_arn : string prop;
  app_bundle_arn : string prop;
  id : string prop;
  tenant : tenant list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auth_request:auth_request list ->
  ?timeouts:timeouts ->
  app_authorization_arn:string prop ->
  app_bundle_arn:string prop ->
  string ->
  t

val make :
  ?auth_request:auth_request list ->
  ?timeouts:timeouts ->
  app_authorization_arn:string prop ->
  app_bundle_arn:string prop ->
  string ->
  t Tf_core.resource
