(** Creates an IdP Discovery Policy Rule.
		
This resource allows you to create and configure an IdP Discovery Policy Rule.
-> If you receive the error 'You do not have permission to access the feature
you are requesting' [contact support](mailto:dev-inquiries@okta.com) and
request feature flag 'ADVANCED_SSO' be applied to your org. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_exclude

val app_exclude :
  ?id:string prop ->
  ?name:string prop ->
  type_:string prop ->
  unit ->
  app_exclude

type app_include

val app_include :
  ?id:string prop ->
  ?name:string prop ->
  type_:string prop ->
  unit ->
  app_include

type platform_include

val platform_include :
  ?os_expression:string prop ->
  ?os_type:string prop ->
  ?type_:string prop ->
  unit ->
  platform_include

type user_identifier_patterns

val user_identifier_patterns :
  ?match_type:string prop ->
  ?value:string prop ->
  unit ->
  user_identifier_patterns

type okta_policy_rule_idp_discovery

val okta_policy_rule_idp_discovery :
  ?id:string prop ->
  ?idp_id:string prop ->
  ?idp_type:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?user_identifier_attribute:string prop ->
  ?user_identifier_type:string prop ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  platform_include:platform_include list ->
  user_identifier_patterns:user_identifier_patterns list ->
  unit ->
  okta_policy_rule_idp_discovery

val yojson_of_okta_policy_rule_idp_discovery :
  okta_policy_rule_idp_discovery -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  idp_id : string prop;
  idp_type : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  user_identifier_attribute : string prop;
  user_identifier_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?idp_id:string prop ->
  ?idp_type:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?user_identifier_attribute:string prop ->
  ?user_identifier_type:string prop ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  platform_include:platform_include list ->
  user_identifier_patterns:user_identifier_patterns list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?idp_id:string prop ->
  ?idp_type:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?user_identifier_attribute:string prop ->
  ?user_identifier_type:string prop ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  platform_include:platform_include list ->
  user_identifier_patterns:user_identifier_patterns list ->
  string ->
  t Tf_core.resource
