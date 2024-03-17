(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_logger__application_insights = {
  instrumentation_key : string prop;  (** instrumentation_key *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__application_insights *)

type azurerm_api_management_logger__eventhub = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  endpoint_uri : string prop option; [@option]  (** endpoint_uri *)
  name : string prop;  (** name *)
  user_assigned_identity_client_id : string prop option; [@option]
      (** user_assigned_identity_client_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__eventhub *)

type azurerm_api_management_logger__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_logger__timeouts *)

type azurerm_api_management_logger = {
  api_management_name : string prop;  (** api_management_name *)
  buffered : bool prop option; [@option]  (** buffered *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  resource_id : string prop option; [@option]  (** resource_id *)
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
