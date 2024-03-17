(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet_service_endpoint_storage_policy__definition = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  service : string option; [@option]  (** service *)
  service_resources : string list;  (** service_resources *)
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy__definition *)

type azurerm_subnet_service_endpoint_storage_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy__timeouts *)

type azurerm_subnet_service_endpoint_storage_policy = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  definition :
    azurerm_subnet_service_endpoint_storage_policy__definition list;
  timeouts :
    azurerm_subnet_service_endpoint_storage_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy *)

let azurerm_subnet_service_endpoint_storage_policy ?tags ?timeouts
    ~location ~name ~resource_group_name ~definition __resource_id =
  let __resource_type =
    "azurerm_subnet_service_endpoint_storage_policy"
  in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      definition;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_service_endpoint_storage_policy
       __resource);
  ()
