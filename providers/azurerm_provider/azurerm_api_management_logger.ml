(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_logger__application_insights = {
  instrumentation_key : string;  (** instrumentation_key *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__application_insights *)

type azurerm_api_management_logger__eventhub = {
  connection_string : string option; [@option]
      (** connection_string *)
  endpoint_uri : string option; [@option]  (** endpoint_uri *)
  name : string;  (** name *)
  user_assigned_identity_client_id : string option; [@option]
      (** user_assigned_identity_client_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__eventhub *)

type azurerm_api_management_logger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__timeouts *)

type azurerm_api_management_logger = {
  api_management_name : string;  (** api_management_name *)
  buffered : bool option; [@option]  (** buffered *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  resource_id : string option; [@option]  (** resource_id *)
  application_insights :
    azurerm_api_management_logger__application_insights list;
  eventhub : azurerm_api_management_logger__eventhub list;
  timeouts : azurerm_api_management_logger__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_logger *)

let azurerm_api_management_logger ?buffered ?description ?id
    ?resource_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~application_insights ~eventhub
    __resource_id =
  let __resource_type = "azurerm_api_management_logger" in
  let __resource =
    {
      api_management_name;
      buffered;
      description;
      id;
      name;
      resource_group_name;
      resource_id;
      application_insights;
      eventhub;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_logger __resource);
  ()
