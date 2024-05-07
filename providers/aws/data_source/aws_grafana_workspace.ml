(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_grafana_workspace = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace) -> ()

let yojson_of_aws_grafana_workspace =
  (function
   | { id = v_id; tags = v_tags; workspace_id = v_workspace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
       `Assoc bnds
    : aws_grafana_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace

[@@@deriving.end]

let aws_grafana_workspace ?id ?tags ~workspace_id () :
    aws_grafana_workspace =
  { id; tags; workspace_id }

type t = {
  tf_name : string;
  account_access_type : string prop;
  arn : string prop;
  authentication_providers : string list prop;
  created_date : string prop;
  data_sources : string list prop;
  description : string prop;
  endpoint : string prop;
  grafana_version : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  notification_destinations : string list prop;
  organization_role_name : string prop;
  organizational_units : string list prop;
  permission_type : string prop;
  role_arn : string prop;
  saml_configuration_status : string prop;
  stack_set_name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?tags ~workspace_id __id =
  let __type = "aws_grafana_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       account_access_type =
         Prop.computed __type __id "account_access_type";
       arn = Prop.computed __type __id "arn";
       authentication_providers =
         Prop.computed __type __id "authentication_providers";
       created_date = Prop.computed __type __id "created_date";
       data_sources = Prop.computed __type __id "data_sources";
       description = Prop.computed __type __id "description";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       notification_destinations =
         Prop.computed __type __id "notification_destinations";
       organization_role_name =
         Prop.computed __type __id "organization_role_name";
       organizational_units =
         Prop.computed __type __id "organizational_units";
       permission_type = Prop.computed __type __id "permission_type";
       role_arn = Prop.computed __type __id "role_arn";
       saml_configuration_status =
         Prop.computed __type __id "saml_configuration_status";
       stack_set_name = Prop.computed __type __id "stack_set_name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace
        (aws_grafana_workspace ?id ?tags ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~workspace_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~workspace_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
