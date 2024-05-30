(** Creates an OIDC Identity Provider. This resource allows you to create and configure an OIDC Identity Provider. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_oidc

val okta_idp_oidc :
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?profile_master:bool prop ->
  ?protocol_type:string prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?status:string prop ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?user_info_binding:string prop ->
  ?user_info_url:string prop ->
  ?username_template:string prop ->
  authorization_binding:string prop ->
  authorization_url:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  issuer_url:string prop ->
  jwks_binding:string prop ->
  jwks_url:string prop ->
  name:string prop ->
  scopes:string prop list ->
  token_binding:string prop ->
  token_url:string prop ->
  unit ->
  okta_idp_oidc

val yojson_of_okta_idp_oidc : okta_idp_oidc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_link_action : string prop;
  account_link_group_include : string list prop;
  authorization_binding : string prop;
  authorization_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  deprovisioned_action : string prop;
  groups_action : string prop;
  groups_assignment : string list prop;
  groups_attribute : string prop;
  groups_filter : string list prop;
  id : string prop;
  issuer_mode : string prop;
  issuer_url : string prop;
  jwks_binding : string prop;
  jwks_url : string prop;
  max_clock_skew : float prop;
  name : string prop;
  profile_master : bool prop;
  protocol_type : string prop;
  provisioning_action : string prop;
  request_signature_algorithm : string prop;
  request_signature_scope : string prop;
  scopes : string list prop;
  status : string prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  user_info_binding : string prop;
  user_info_url : string prop;
  user_type_id : string prop;
  username_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?profile_master:bool prop ->
  ?protocol_type:string prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?status:string prop ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?user_info_binding:string prop ->
  ?user_info_url:string prop ->
  ?username_template:string prop ->
  authorization_binding:string prop ->
  authorization_url:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  issuer_url:string prop ->
  jwks_binding:string prop ->
  jwks_url:string prop ->
  name:string prop ->
  scopes:string prop list ->
  token_binding:string prop ->
  token_url:string prop ->
  string ->
  t

val make :
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?profile_master:bool prop ->
  ?protocol_type:string prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?status:string prop ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?user_info_binding:string prop ->
  ?user_info_url:string prop ->
  ?username_template:string prop ->
  authorization_binding:string prop ->
  authorization_url:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  issuer_url:string prop ->
  jwks_binding:string prop ->
  jwks_url:string prop ->
  name:string prop ->
  scopes:string prop list ->
  token_binding:string prop ->
  token_url:string prop ->
  string ->
  t Tf_core.resource
