(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_grafana_workspace_saml_configuration

val aws_grafana_workspace_saml_configuration :
  ?admin_role_values:string prop list ->
  ?allowed_organizations:string prop list ->
  ?email_assertion:string prop ->
  ?groups_assertion:string prop ->
  ?id:string prop ->
  ?idp_metadata_url:string prop ->
  ?idp_metadata_xml:string prop ->
  ?login_assertion:string prop ->
  ?login_validity_duration:float prop ->
  ?name_assertion:string prop ->
  ?org_assertion:string prop ->
  ?role_assertion:string prop ->
  ?timeouts:timeouts ->
  editor_role_values:string prop list ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_workspace_saml_configuration

val yojson_of_aws_grafana_workspace_saml_configuration :
  aws_grafana_workspace_saml_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_role_values : string list prop;
  allowed_organizations : string list prop;
  editor_role_values : string list prop;
  email_assertion : string prop;
  groups_assertion : string prop;
  id : string prop;
  idp_metadata_url : string prop;
  idp_metadata_xml : string prop;
  login_assertion : string prop;
  login_validity_duration : float prop;
  name_assertion : string prop;
  org_assertion : string prop;
  role_assertion : string prop;
  status : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_role_values:string prop list ->
  ?allowed_organizations:string prop list ->
  ?email_assertion:string prop ->
  ?groups_assertion:string prop ->
  ?id:string prop ->
  ?idp_metadata_url:string prop ->
  ?idp_metadata_xml:string prop ->
  ?login_assertion:string prop ->
  ?login_validity_duration:float prop ->
  ?name_assertion:string prop ->
  ?org_assertion:string prop ->
  ?role_assertion:string prop ->
  ?timeouts:timeouts ->
  editor_role_values:string prop list ->
  workspace_id:string prop ->
  string ->
  t
