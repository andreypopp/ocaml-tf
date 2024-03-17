(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall__ip_configuration = {
  name : string;  (** name *)
  private_ip_address : string;  (** private_ip_address *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__ip_configuration *)

type azurerm_firewall__management_ip_configuration = {
  name : string;  (** name *)
  private_ip_address : string;  (** private_ip_address *)
  public_ip_address_id : string;  (** public_ip_address_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__management_ip_configuration *)

type azurerm_firewall__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall__timeouts *)

type azurerm_firewall__virtual_hub = {
  private_ip_address : string;  (** private_ip_address *)
  public_ip_addresses : string list;  (** public_ip_addresses *)
  public_ip_count : float option; [@option]  (** public_ip_count *)
  virtual_hub_id : string;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__virtual_hub *)

type azurerm_firewall = {
  dns_proxy_enabled : bool option; [@option]
      (** dns_proxy_enabled *)
  dns_servers : string list option; [@option]  (** dns_servers *)
  firewall_policy_id : string option; [@option]
      (** firewall_policy_id *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  private_ip_ranges : string list option; [@option]
      (** private_ip_ranges *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  sku_tier : string;  (** sku_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  threat_intel_mode : string option; [@option]
      (** threat_intel_mode *)
  zones : string list option; [@option]  (** zones *)
  ip_configuration : azurerm_firewall__ip_configuration list;
  management_ip_configuration :
    azurerm_firewall__management_ip_configuration list;
  timeouts : azurerm_firewall__timeouts option;
  virtual_hub : azurerm_firewall__virtual_hub list;
}
[@@deriving yojson_of]
(** azurerm_firewall *)

let azurerm_firewall ?dns_proxy_enabled ?dns_servers
    ?firewall_policy_id ?id ?private_ip_ranges ?tags
    ?threat_intel_mode ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
    ~management_ip_configuration ~virtual_hub __resource_id =
  let __resource_type = "azurerm_firewall" in
  let __resource =
    {
      dns_proxy_enabled;
      dns_servers;
      firewall_policy_id;
      id;
      location;
      name;
      private_ip_ranges;
      resource_group_name;
      sku_name;
      sku_tier;
      tags;
      threat_intel_mode;
      zones;
      ip_configuration;
      management_ip_configuration;
      timeouts;
      virtual_hub;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall __resource);
  ()
