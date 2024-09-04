(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type credential__api_key_credential

val credential__api_key_credential :
  api_key:string prop -> unit -> credential__api_key_credential

type credential__oauth2_credential

val credential__oauth2_credential :
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  credential__oauth2_credential

type credential

val credential :
  ?api_key_credential:credential__api_key_credential list ->
  ?oauth2_credential:credential__oauth2_credential list ->
  unit ->
  credential

type tenant

val tenant :
  tenant_display_name:string prop ->
  tenant_identifier:string prop ->
  unit ->
  tenant

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_appfabric_app_authorization

val aws_appfabric_app_authorization :
  ?tags:string prop Tf_core.assoc ->
  ?credential:credential list ->
  ?tenant:tenant list ->
  ?timeouts:timeouts ->
  app:string prop ->
  app_bundle_arn:string prop ->
  auth_type:string prop ->
  unit ->
  aws_appfabric_app_authorization

val yojson_of_aws_appfabric_app_authorization :
  aws_appfabric_app_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app : string prop;
  app_bundle_arn : string prop;
  arn : string prop;
  auth_type : string prop;
  auth_url : string prop;
  created_at : string prop;
  id : string prop;
  persona : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?credential:credential list ->
  ?tenant:tenant list ->
  ?timeouts:timeouts ->
  app:string prop ->
  app_bundle_arn:string prop ->
  auth_type:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?credential:credential list ->
  ?tenant:tenant list ->
  ?timeouts:timeouts ->
  app:string prop ->
  app_bundle_arn:string prop ->
  auth_type:string prop ->
  string ->
  t Tf_core.resource
