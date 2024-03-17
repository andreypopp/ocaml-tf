(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_traffic_manager_nested_endpoint__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__custom_header *)

type azurerm_traffic_manager_nested_endpoint__subnet = {
  first : string prop;  (** first *)
  last : string prop option; [@option]  (** last *)
  scope : float prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__subnet *)

type azurerm_traffic_manager_nested_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__timeouts *)

type azurerm_traffic_manager_nested_endpoint = {
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_location : string prop option; [@option]
      (** endpoint_location *)
  geo_mappings : string prop list option; [@option]
      (** geo_mappings *)
  id : string prop option; [@option]  (** id *)
  minimum_child_endpoints : float prop;
      (** minimum_child_endpoints *)
  minimum_required_child_endpoints_ipv4 : float prop option;
      [@option]
      (** minimum_required_child_endpoints_ipv4 *)
  minimum_required_child_endpoints_ipv6 : float prop option;
      [@option]
      (** minimum_required_child_endpoints_ipv6 *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  profile_id : string prop;  (** profile_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  weight : float prop option; [@option]  (** weight *)
  custom_header :
    azurerm_traffic_manager_nested_endpoint__custom_header list;
  subnet : azurerm_traffic_manager_nested_endpoint__subnet list;
  timeouts : azurerm_traffic_manager_nested_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint *)

let azurerm_traffic_manager_nested_endpoint ?enabled
    ?endpoint_location ?geo_mappings ?id
    ?minimum_required_child_endpoints_ipv4
    ?minimum_required_child_endpoints_ipv6 ?priority ?weight
    ?timeouts ~minimum_child_endpoints ~name ~profile_id
    ~target_resource_id ~custom_header ~subnet __resource_id =
  let __resource_type = "azurerm_traffic_manager_nested_endpoint" in
  let __resource =
    {
      enabled;
      endpoint_location;
      geo_mappings;
      id;
      minimum_child_endpoints;
      minimum_required_child_endpoints_ipv4;
      minimum_required_child_endpoints_ipv6;
      name;
      priority;
      profile_id;
      target_resource_id;
      weight;
      custom_header;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_nested_endpoint __resource);
  ()
