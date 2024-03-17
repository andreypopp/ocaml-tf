(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_workspace_saml_configuration__timeouts
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
  ?timeouts:aws_grafana_workspace_saml_configuration__timeouts ->
  editor_role_values:string prop list ->
  workspace_id:string prop ->
  string ->
  unit
