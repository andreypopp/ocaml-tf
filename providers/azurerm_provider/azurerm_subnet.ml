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

type t = {
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  service_endpoint_policy_ids : string list prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

let azurerm_subnet ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints ?timeouts
    ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation __resource_id =
  let __resource_type = "azurerm_subnet" in
  let __resource =
    ({
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
      : azurerm_subnet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet __resource);
  let __resource_attributes =
    ({
       address_prefixes =
         Prop.computed __resource_type __resource_id
           "address_prefixes";
       enforce_private_link_endpoint_network_policies =
         Prop.computed __resource_type __resource_id
           "enforce_private_link_endpoint_network_policies";
       enforce_private_link_service_network_policies =
         Prop.computed __resource_type __resource_id
           "enforce_private_link_service_network_policies";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       private_endpoint_network_policies_enabled =
         Prop.computed __resource_type __resource_id
           "private_endpoint_network_policies_enabled";
       private_link_service_network_policies_enabled =
         Prop.computed __resource_type __resource_id
           "private_link_service_network_policies_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_endpoint_policy_ids =
         Prop.computed __resource_type __resource_id
           "service_endpoint_policy_ids";
       service_endpoints =
         Prop.computed __resource_type __resource_id
           "service_endpoints";
       virtual_network_name =
         Prop.computed __resource_type __resource_id
           "virtual_network_name";
     }
      : t)
  in
  __resource_attributes
