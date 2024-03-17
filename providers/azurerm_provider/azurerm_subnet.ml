(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet__delegation__service_delegation = {
  actions : string list option; [@option]  (** actions *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_subnet__delegation__service_delegation *)

type azurerm_subnet__delegation = {
  name : string;  (** name *)
  service_delegation :
    azurerm_subnet__delegation__service_delegation list;
}
[@@deriving yojson_of]
(** azurerm_subnet__delegation *)

type azurerm_subnet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subnet__timeouts *)

type azurerm_subnet = {
  address_prefixes : string list;  (** address_prefixes *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  service_endpoint_policy_ids : string list option; [@option]
      (** service_endpoint_policy_ids *)
  service_endpoints : string list option; [@option]
      (** service_endpoints *)
  virtual_network_name : string;  (** virtual_network_name *)
  delegation : azurerm_subnet__delegation list;
  timeouts : azurerm_subnet__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet *)

let azurerm_subnet ?service_endpoint_policy_ids ?service_endpoints
    ?timeouts ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation __resource_id =
  let __resource_type = "azurerm_subnet" in
  let __resource =
    {
      address_prefixes;
      name;
      resource_group_name;
      service_endpoint_policy_ids;
      service_endpoints;
      virtual_network_name;
      delegation;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet __resource);
  ()
