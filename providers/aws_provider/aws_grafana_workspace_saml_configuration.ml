(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_grafana_workspace_saml_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace_saml_configuration__timeouts *)

type aws_grafana_workspace_saml_configuration = {
  admin_role_values : string list option; [@option]
      (** admin_role_values *)
  allowed_organizations : string list option; [@option]
      (** allowed_organizations *)
  editor_role_values : string list;  (** editor_role_values *)
  groups_assertion : string option; [@option]
      (** groups_assertion *)
  idp_metadata_url : string option; [@option]
      (** idp_metadata_url *)
  idp_metadata_xml : string option; [@option]
      (** idp_metadata_xml *)
  org_assertion : string option; [@option]  (** org_assertion *)
  role_assertion : string option; [@option]  (** role_assertion *)
  workspace_id : string;  (** workspace_id *)
  timeouts :
    aws_grafana_workspace_saml_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_workspace_saml_configuration *)

let aws_grafana_workspace_saml_configuration ?admin_role_values
    ?allowed_organizations ?groups_assertion ?idp_metadata_url
    ?idp_metadata_xml ?org_assertion ?role_assertion ?timeouts
    ~editor_role_values ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_workspace_saml_configuration" in
  let __resource =
    {
      admin_role_values;
      allowed_organizations;
      editor_role_values;
      groups_assertion;
      idp_metadata_url;
      idp_metadata_xml;
      org_assertion;
      role_assertion;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace_saml_configuration __resource);
  ()
