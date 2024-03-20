(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_data_connector_aws_cloud_trail = {
  aws_role_arn : string prop;  (** aws_role_arn *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_cloud_trail *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_aws_cloud_trail ?id ?timeouts
    ~aws_role_arn ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_aws_cloud_trail =
  { aws_role_arn; id; log_analytics_workspace_id; name; timeouts }

type t = {
  aws_role_arn : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~aws_role_arn ~log_analytics_workspace_id
    ~name __id =
  let __type = "azurerm_sentinel_data_connector_aws_cloud_trail" in
  let __attrs =
    ({
       aws_role_arn = Prop.computed __type __id "aws_role_arn";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail
        (azurerm_sentinel_data_connector_aws_cloud_trail ?id
           ?timeouts ~aws_role_arn ~log_analytics_workspace_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~aws_role_arn
    ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~aws_role_arn ~log_analytics_workspace_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
