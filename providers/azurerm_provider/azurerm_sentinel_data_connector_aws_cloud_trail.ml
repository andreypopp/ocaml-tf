(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_cloud_trail__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_cloud_trail__timeouts *)

type azurerm_sentinel_data_connector_aws_cloud_trail = {
  aws_role_arn : string prop;  (** aws_role_arn *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  timeouts :
    azurerm_sentinel_data_connector_aws_cloud_trail__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_cloud_trail *)

let azurerm_sentinel_data_connector_aws_cloud_trail ?id ?timeouts
    ~aws_role_arn ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_aws_cloud_trail"
  in
  let __resource =
    { aws_role_arn; id; log_analytics_workspace_id; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail
       __resource);
  ()
