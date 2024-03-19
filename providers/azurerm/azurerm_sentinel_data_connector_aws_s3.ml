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

type azurerm_sentinel_data_connector_aws_s3 = {
  aws_role_arn : string prop;  (** aws_role_arn *)
  destination_table : string prop;  (** destination_table *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  sqs_urls : string prop list;  (** sqs_urls *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_s3 *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_aws_s3 ?id ?timeouts
    ~aws_role_arn ~destination_table ~log_analytics_workspace_id
    ~name ~sqs_urls () : azurerm_sentinel_data_connector_aws_s3 =
  {
    aws_role_arn;
    destination_table;
    id;
    log_analytics_workspace_id;
    name;
    sqs_urls;
    timeouts;
  }

type t = {
  aws_role_arn : string prop;
  destination_table : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sqs_urls : string list prop;
}

let register ?tf_module ?id ?timeouts ~aws_role_arn
    ~destination_table ~log_analytics_workspace_id ~name ~sqs_urls
    __resource_id =
  let __resource_type = "azurerm_sentinel_data_connector_aws_s3" in
  let __resource =
    azurerm_sentinel_data_connector_aws_s3 ?id ?timeouts
      ~aws_role_arn ~destination_table ~log_analytics_workspace_id
      ~name ~sqs_urls ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_aws_s3 __resource);
  let __resource_attributes =
    ({
       aws_role_arn =
         Prop.computed __resource_type __resource_id "aws_role_arn";
       destination_table =
         Prop.computed __resource_type __resource_id
           "destination_table";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       sqs_urls =
         Prop.computed __resource_type __resource_id "sqs_urls";
     }
      : t)
  in
  __resource_attributes
