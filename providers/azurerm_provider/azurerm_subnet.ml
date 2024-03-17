(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet__delegation__service_delegation = {
  actions : string prop list option; [@option]  (** actions *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_subnet__delegation__service_delegation *)

type azurerm_subnet__delegation = {
  name : string prop;  (** name *)
  service_delegation :
    azurerm_subnet__delegation__service_delegation list;
}
[@@deriving yojson_of]
(** azurerm_subnet__delegation *)

type azurerm_subnet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subnet__timeouts *)

type azurerm_subnet = {
  address_prefixes : string prop list;  (** address_prefixes *)
  enforce_private_link_endpoint_network_policies : bool prop option;
      [@option]
      (** enforce_private_link_endpoint_network_policies *)
  enforce_private_link_service_network_policies : bool prop option;
      [@option]
      (** enforce_private_link_service_network_policies *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_endpoint_network_policies_enabled : bool prop option;
      [@option]
      (** private_endpoint_network_policies_enabled *)
  private_link_service_network_policies_enabled : bool prop option;
      [@option]
      (** private_link_service_network_policies_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_endpoint_policy_ids : string prop list option; [@option]
      (** service_endpoint_policy_ids *)
  service_endpoints : string prop list option; [@option]
      (** service_endpoints *)
  virtual_network_name : string prop;  (** virtual_network_name *)
  delegation : azurerm_subnet__delegation list;
  timeouts : azurerm_subnet__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet *)

let azurerm_subnet ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints ?timeouts
    ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation __resource_id =
  let __resource_type = "azurerm_subnet" in
  let __resource =
    {
      address_prefixes;
      enforce_private_link_endpoint_network_policies;
      enforce_private_link_service_network_policies;
      id;
      name;
      private_endpoint_network_policies_enabled;
      private_link_service_network_policies_enabled;
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
