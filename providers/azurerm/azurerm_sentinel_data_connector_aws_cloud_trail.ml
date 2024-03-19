(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~aws_role_arn
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_aws_cloud_trail"
  in
  let __resource =
    azurerm_sentinel_data_connector_aws_cloud_trail ?id ?timeouts
      ~aws_role_arn ~log_analytics_workspace_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail
       __resource);
  let __resource_attributes =
    ({
       aws_role_arn =
         Prop.computed __resource_type __resource_id "aws_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
