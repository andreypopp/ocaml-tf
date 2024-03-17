(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_traffic_manager_nested_endpoint__custom_header = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__custom_header *)

type azurerm_traffic_manager_nested_endpoint__subnet = {
  first : string;  (** first *)
  last : string option; [@option]  (** last *)
  scope : float option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__subnet *)

type azurerm_traffic_manager_nested_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint__timeouts *)

type azurerm_traffic_manager_nested_endpoint = {
  enabled : bool option; [@option]  (** enabled *)
  geo_mappings : string list option; [@option]  (** geo_mappings *)
  minimum_child_endpoints : float;  (** minimum_child_endpoints *)
  minimum_required_child_endpoints_ipv4 : float option; [@option]
      (** minimum_required_child_endpoints_ipv4 *)
  minimum_required_child_endpoints_ipv6 : float option; [@option]
      (** minimum_required_child_endpoints_ipv6 *)
  name : string;  (** name *)
  profile_id : string;  (** profile_id *)
  target_resource_id : string;  (** target_resource_id *)
  custom_header :
    azurerm_traffic_manager_nested_endpoint__custom_header list;
  subnet : azurerm_traffic_manager_nested_endpoint__subnet list;
  timeouts : azurerm_traffic_manager_nested_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_nested_endpoint *)

let azurerm_traffic_manager_nested_endpoint ?enabled ?geo_mappings
    ?minimum_required_child_endpoints_ipv4
    ?minimum_required_child_endpoints_ipv6 ?timeouts
    ~minimum_child_endpoints ~name ~profile_id ~target_resource_id
    ~custom_header ~subnet __resource_id =
  let __resource_type = "azurerm_traffic_manager_nested_endpoint" in
  let __resource =
    {
      enabled;
      geo_mappings;
      minimum_child_endpoints;
      minimum_required_child_endpoints_ipv4;
      minimum_required_child_endpoints_ipv6;
      name;
      profile_id;
      target_resource_id;
      custom_header;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_nested_endpoint __resource);
  ()
