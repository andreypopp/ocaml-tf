(** Get a social IdP from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_social

val okta_idp_social :
  ?id:string prop -> ?name:string prop -> unit -> okta_idp_social

val yojson_of_okta_idp_social : okta_idp_social -> json

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
  max_clock_skew : float prop;
  name : string prop;
  profile_master : bool prop;
  protocol_type : string prop;
  provisioning_action : string prop;
  scopes : string list prop;
  status : string prop;
  subject_match_attribute : string prop;
  subject_match_type : string prop;
  suspended_action : string prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  username_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
