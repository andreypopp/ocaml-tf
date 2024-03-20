(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_grafana_workspace_saml_configuration = {
  admin_role_values : string prop list option; [@option]
  allowed_organizations : string prop list option; [@option]
  editor_role_values : string prop list;
  email_assertion : string prop option; [@option]
  groups_assertion : string prop option; [@option]
  id : string prop option; [@option]
  idp_metadata_url : string prop option; [@option]
  idp_metadata_xml : string prop option; [@option]
  login_assertion : string prop option; [@option]
  login_validity_duration : float prop option; [@option]
  name_assertion : string prop option; [@option]
  org_assertion : string prop option; [@option]
  role_assertion : string prop option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace_saml_configuration) -> ()

let yojson_of_aws_grafana_workspace_saml_configuration =
  (function
   | {
       admin_role_values = v_admin_role_values;
       allowed_organizations = v_allowed_organizations;
       editor_role_values = v_editor_role_values;
       email_assertion = v_email_assertion;
       groups_assertion = v_groups_assertion;
       id = v_id;
       idp_metadata_url = v_idp_metadata_url;
       idp_metadata_xml = v_idp_metadata_xml;
       login_assertion = v_login_assertion;
       login_validity_duration = v_login_validity_duration;
       name_assertion = v_name_assertion;
       org_assertion = v_org_assertion;
       role_assertion = v_role_assertion;
       workspace_id = v_workspace_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_role_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_validity_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "login_validity_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_login_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "login_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_metadata_xml with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_metadata_xml", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_metadata_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_metadata_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groups_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_assertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_assertion", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_editor_role_values
         in
         ("editor_role_values", arg) :: bnds
       in
       let bnds =
         match v_allowed_organizations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_organizations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_role_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_role_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_grafana_workspace_saml_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace_saml_configuration

[@@@deriving.end]

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
