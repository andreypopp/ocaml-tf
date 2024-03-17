(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_aws_s3__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_s3__timeouts *)

type azurerm_sentinel_data_connector_aws_s3 = {
  aws_role_arn : string prop;  (** aws_role_arn *)
  destination_table : string prop;  (** destination_table *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  sqs_urls : string prop list;  (** sqs_urls *)
  timeouts : azurerm_sentinel_data_connector_aws_s3__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_aws_s3 *)

let azurerm_sentinel_data_connector_aws_s3 ?id ?timeouts
    ~aws_role_arn ~destination_table ~log_analytics_workspace_id
    ~name ~sqs_urls __resource_id =
  let __resource_type = "azurerm_sentinel_data_connector_aws_s3" in
  let __resource =
    {
      aws_role_arn;
      destination_table;
      id;
      log_analytics_workspace_id;
      name;
      sqs_urls;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_aws_s3 __resource);
  ()
