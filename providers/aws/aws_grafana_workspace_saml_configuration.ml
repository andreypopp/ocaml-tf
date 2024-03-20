(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_workspace_saml_configuration *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_grafana_workspace_saml_configuration ?admin_role_values
    ?allowed_organizations ?email_assertion ?groups_assertion ?id
    ?idp_metadata_url ?idp_metadata_xml ?login_assertion
    ?login_validity_duration ?name_assertion ?org_assertion
    ?role_assertion ?timeouts ~editor_role_values ~workspace_id () :
    aws_grafana_workspace_saml_configuration =
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

type t = {
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

let make ?admin_role_values ?allowed_organizations ?email_assertion
    ?groups_assertion ?id ?idp_metadata_url ?idp_metadata_xml
    ?login_assertion ?login_validity_duration ?name_assertion
    ?org_assertion ?role_assertion ?timeouts ~editor_role_values
    ~workspace_id __id =
  let __type = "aws_grafana_workspace_saml_configuration" in
  let __attrs =
    ({
       admin_role_values =
         Prop.computed __type __id "admin_role_values";
       allowed_organizations =
         Prop.computed __type __id "allowed_organizations";
       editor_role_values =
         Prop.computed __type __id "editor_role_values";
       email_assertion = Prop.computed __type __id "email_assertion";
       groups_assertion =
         Prop.computed __type __id "groups_assertion";
       id = Prop.computed __type __id "id";
       idp_metadata_url =
         Prop.computed __type __id "idp_metadata_url";
       idp_metadata_xml =
         Prop.computed __type __id "idp_metadata_xml";
       login_assertion = Prop.computed __type __id "login_assertion";
       login_validity_duration =
         Prop.computed __type __id "login_validity_duration";
       name_assertion = Prop.computed __type __id "name_assertion";
       org_assertion = Prop.computed __type __id "org_assertion";
       role_assertion = Prop.computed __type __id "role_assertion";
       status = Prop.computed __type __id "status";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace_saml_configuration
        (aws_grafana_workspace_saml_configuration ?admin_role_values
           ?allowed_organizations ?email_assertion ?groups_assertion
           ?id ?idp_metadata_url ?idp_metadata_xml ?login_assertion
           ?login_validity_duration ?name_assertion ?org_assertion
           ?role_assertion ?timeouts ~editor_role_values
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_role_values ?allowed_organizations
    ?email_assertion ?groups_assertion ?id ?idp_metadata_url
    ?idp_metadata_xml ?login_assertion ?login_validity_duration
    ?name_assertion ?org_assertion ?role_assertion ?timeouts
    ~editor_role_values ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?admin_role_values ?allowed_organizations ?email_assertion
      ?groups_assertion ?id ?idp_metadata_url ?idp_metadata_xml
      ?login_assertion ?login_validity_duration ?name_assertion
      ?org_assertion ?role_assertion ?timeouts ~editor_role_values
      ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
