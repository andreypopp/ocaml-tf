(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_workspace_saml_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace_saml_configuration__timeouts *)

type aws_grafana_workspace_saml_configuration = {
  admin_role_values : string prop list option; [@option]
      (** admin_role_values *)
  allowed_organizations : string prop list option; [@option]
      (** allowed_organizations *)
  editor_role_values : string prop list;  (** editor_role_values *)
  email_assertion : string prop option; [@option]
      (** email_assertion *)
  groups_assertion : string prop option; [@option]
      (** groups_assertion *)
  id : string prop option; [@option]  (** id *)
  idp_metadata_url : string prop option; [@option]
      (** idp_metadata_url *)
  idp_metadata_xml : string prop option; [@option]
      (** idp_metadata_xml *)
  login_assertion : string prop option; [@option]
      (** login_assertion *)
  login_validity_duration : float prop option; [@option]
      (** login_validity_duration *)
  name_assertion : string prop option; [@option]
      (** name_assertion *)
  org_assertion : string prop option; [@option]  (** org_assertion *)
  role_assertion : string prop option; [@option]
      (** role_assertion *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    aws_grafana_workspace_saml_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_workspace_saml_configuration *)

let aws_grafana_workspace_saml_configuration ?admin_role_values
    ?allowed_organizations ?email_assertion ?groups_assertion ?id
    ?idp_metadata_url ?idp_metadata_xml ?login_assertion
    ?login_validity_duration ?name_assertion ?org_assertion
    ?role_assertion ?timeouts ~editor_role_values ~workspace_id
    __resource_id =
  let __resource_type = "aws_grafana_workspace_saml_configuration" in
  let __resource =
    {
      admin_role_values;
      allowed_organizations;
      editor_role_values;
      email_assertion;
      groups_assertion;
      id;
      idp_metadata_url;
      idp_metadata_xml;
      login_assertion;
      login_validity_duration;
      name_assertion;
      org_assertion;
      role_assertion;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace_saml_configuration __resource);
  ()
