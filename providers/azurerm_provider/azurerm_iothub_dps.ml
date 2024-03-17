(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_dps__ip_filter_rule = {
  action : string;  (** action *)
  ip_mask : string;  (** ip_mask *)
  name : string;  (** name *)
  target : string option; [@option]  (** target *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__ip_filter_rule *)

type azurerm_iothub_dps__linked_hub = {
  allocation_weight : float option; [@option]
      (** allocation_weight *)
  apply_allocation_policy : bool option; [@option]
      (** apply_allocation_policy *)
  connection_string : string;  (** connection_string *)
  hostname : string;  (** hostname *)
  location : string;  (** location *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__linked_hub *)

type azurerm_iothub_dps__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__sku *)

type azurerm_iothub_dps__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__timeouts *)

type azurerm_iothub_dps = {
  allocation_policy : string option; [@option]
      (** allocation_policy *)
  data_residency_enabled : bool option; [@option]
      (** data_residency_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ip_filter_rule : azurerm_iothub_dps__ip_filter_rule list;
  linked_hub : azurerm_iothub_dps__linked_hub list;
  sku : azurerm_iothub_dps__sku list;
  timeouts : azurerm_iothub_dps__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps *)

let azurerm_iothub_dps ?allocation_policy ?data_residency_enabled
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_filter_rule ~linked_hub ~sku
    __resource_id =
  let __resource_type = "azurerm_iothub_dps" in
  let __resource =
    {
      allocation_policy;
      data_residency_enabled;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      tags;
      ip_filter_rule;
      linked_hub;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_dps __resource);
  ()
