(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall__ip_configuration = {
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__ip_configuration *)

type azurerm_firewall__management_ip_configuration = {
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__management_ip_configuration *)

type azurerm_firewall__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall__timeouts *)

type azurerm_firewall__virtual_hub = {
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_addresses : string prop list;  (** public_ip_addresses *)
  public_ip_count : float prop option; [@option]
      (** public_ip_count *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** azurerm_firewall__virtual_hub *)

type azurerm_firewall = {
  dns_proxy_enabled : bool prop option; [@option]
      (** dns_proxy_enabled *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  firewall_policy_id : string prop option; [@option]
      (** firewall_policy_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_ip_ranges : string prop list option; [@option]
      (** private_ip_ranges *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  sku_tier : string prop;  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  threat_intel_mode : string prop option; [@option]
      (** threat_intel_mode *)
  zones : string prop list option; [@option]  (** zones *)
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
