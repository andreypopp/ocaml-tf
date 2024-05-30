(** Manages assignment of an admin role to an OAuth application
		This resource allows you to assign an Okta admin role to a OAuth 
		service application. This requires the Okta tenant feature flag for this function to be enabled. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_oauth_role_assignment

val okta_app_oauth_role_assignment :
  ?resource_set:string prop ->
  ?role:string prop ->
  client_id:string prop ->
  type_:string prop ->
  unit ->
  okta_app_oauth_role_assignment

val yojson_of_okta_app_oauth_role_assignment :
  okta_app_oauth_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  label : string prop;
  resource_set : string prop;
  role : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?resource_set:string prop ->
  ?role:string prop ->
  client_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?resource_set:string prop ->
  ?role:string prop ->
  client_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
