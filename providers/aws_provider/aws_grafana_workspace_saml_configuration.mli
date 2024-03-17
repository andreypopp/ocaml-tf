(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_workspace_saml_configuration__timeouts
type aws_grafana_workspace_saml_configuration

val aws_grafana_workspace_saml_configuration :
  ?admin_role_values:string list ->
  ?allowed_organizations:string list ->
  ?groups_assertion:string ->
  ?idp_metadata_url:string ->
  ?idp_metadata_xml:string ->
  ?org_assertion:string ->
  ?role_assertion:string ->
  ?timeouts:aws_grafana_workspace_saml_configuration__timeouts ->
  editor_role_values:string list ->
  workspace_id:string ->
  string ->
  unit
