(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_endpoint_cosmosdb_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_cosmosdb_account__timeouts *)

type azurerm_iothub_endpoint_cosmosdb_account = {
  authentication_type : string option; [@option]
      (** authentication_type *)
  container_name : string;  (** container_name *)
  database_name : string;  (** database_name *)
  endpoint_uri : string;  (** endpoint_uri *)
  identity_id : string option; [@option]  (** identity_id *)
  iothub_id : string;  (** iothub_id *)
  name : string;  (** name *)
  partition_key_name : string option; [@option]
      (** partition_key_name *)
  partition_key_template : string option; [@option]
      (** partition_key_template *)
  primary_key : string option; [@option]  (** primary_key *)
  resource_group_name : string;  (** resource_group_name *)
  secondary_key : string option; [@option]  (** secondary_key *)
  timeouts :
    azurerm_iothub_endpoint_cosmosdb_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_cosmosdb_account *)

let azurerm_iothub_endpoint_cosmosdb_account ?authentication_type
    ?identity_id ?partition_key_name ?partition_key_template
    ?primary_key ?secondary_key ?timeouts ~container_name
    ~database_name ~endpoint_uri ~iothub_id ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_endpoint_cosmosdb_account" in
  let __resource =
    {
      authentication_type;
      container_name;
      database_name;
      endpoint_uri;
      identity_id;
      iothub_id;
      name;
      partition_key_name;
      partition_key_template;
      primary_key;
      resource_group_name;
      secondary_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_endpoint_cosmosdb_account __resource);
  ()
