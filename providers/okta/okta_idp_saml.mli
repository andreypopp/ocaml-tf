(** Creates a SAML Identity Provider. This resource allows you to create and configure a SAML Identity Provider. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_saml

val okta_idp_saml :
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?acs_type:string prop ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?name_format:string prop ->
  ?profile_master:bool prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?response_signature_algorithm:string prop ->
  ?response_signature_scope:string prop ->
  ?sso_binding:string prop ->
  ?sso_destination:string prop ->
  ?status:string prop ->
  ?subject_filter:string prop ->
  ?subject_format:string prop list ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?username_template:string prop ->
  issuer:string prop ->
  kid:string prop ->
  name:string prop ->
  sso_url:string prop ->
  unit ->
  okta_idp_saml

val yojson_of_okta_idp_saml : okta_idp_saml -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_link_action : string prop;
  account_link_group_include : string list prop;
  acs_binding : string prop;
  acs_type : string prop;
  audience : string prop;
  deprovisioned_action : string prop;
  groups_action : string prop;
  groups_assignment : string list prop;
  groups_attribute : string prop;
  groups_filter : string list prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  max_clock_skew : float prop;
  name : string prop;
  name_format : string prop;
  profile_master : bool prop;
  provisioning_action : string prop;
  request_signature_algorithm : string prop;
  request_signature_scope : string prop;
  response_signature_algorithm : string prop;
  response_signature_scope : string prop;
  sso_binding : string prop;
  sso_destination : string prop;
  sso_url : string prop;
  status : string prop;
  subject_filter : string prop;
  subject_format : string list prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  type_ : string prop;
  user_type_id : string prop;
  username_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?acs_type:string prop ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?name_format:string prop ->
  ?profile_master:bool prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?response_signature_algorithm:string prop ->
  ?response_signature_scope:string prop ->
  ?sso_binding:string prop ->
  ?sso_destination:string prop ->
  ?status:string prop ->
  ?subject_filter:string prop ->
  ?subject_format:string prop list ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?username_template:string prop ->
  issuer:string prop ->
  kid:string prop ->
  name:string prop ->
  sso_url:string prop ->
  string ->
  t

val make :
  ?account_link_action:string prop ->
  ?account_link_group_include:string prop list ->
  ?acs_type:string prop ->
  ?deprovisioned_action:string prop ->
  ?groups_action:string prop ->
  ?groups_assignment:string prop list ->
  ?groups_attribute:string prop ->
  ?groups_filter:string prop list ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?max_clock_skew:float prop ->
  ?name_format:string prop ->
  ?profile_master:bool prop ->
  ?provisioning_action:string prop ->
  ?request_signature_algorithm:string prop ->
  ?request_signature_scope:string prop ->
  ?response_signature_algorithm:string prop ->
  ?response_signature_scope:string prop ->
  ?sso_binding:string prop ->
  ?sso_destination:string prop ->
  ?status:string prop ->
  ?subject_filter:string prop ->
  ?subject_format:string prop list ->
  ?subject_match_attribute:string prop ->
  ?subject_match_type:string prop ->
  ?suspended_action:string prop ->
  ?username_template:string prop ->
  issuer:string prop ->
  kid:string prop ->
  name:string prop ->
  sso_url:string prop ->
  string ->
  t Tf_core.resource
