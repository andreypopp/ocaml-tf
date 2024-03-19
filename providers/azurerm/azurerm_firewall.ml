(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ip_configuration = {
  name : string prop;  (** name *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** ip_configuration *)

type management_ip_configuration = {
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** management_ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_hub = {
  public_ip_count : float prop option; [@option]
      (** public_ip_count *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** virtual_hub *)

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
  ip_configuration : ip_configuration list;
  management_ip_configuration : management_ip_configuration list;
  timeouts : timeouts option;
  virtual_hub : virtual_hub list;
}
[@@deriving yojson_of]
(** azurerm_firewall *)

let ip_configuration ?public_ip_address_id ?subnet_id ~name () :
    ip_configuration =
  { name; public_ip_address_id; subnet_id }

let management_ip_configuration ~name ~public_ip_address_id
    ~subnet_id () : management_ip_configuration =
  { name; public_ip_address_id; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_hub ?public_ip_count ~virtual_hub_id () : virtual_hub =
  { public_ip_count; virtual_hub_id }

let azurerm_firewall ?dns_proxy_enabled ?dns_servers
    ?firewall_policy_id ?id ?private_ip_ranges ?tags
    ?threat_intel_mode ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
    ~management_ip_configuration ~virtual_hub () : azurerm_firewall =
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

type t = {
  dns_proxy_enabled : bool prop;
  dns_servers : string list prop;
  firewall_policy_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_ranges : string list prop;
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  threat_intel_mode : string prop;
  zones : string list prop;
}

let register ?tf_module ?dns_proxy_enabled ?dns_servers
    ?firewall_policy_id ?id ?private_ip_ranges ?tags
    ?threat_intel_mode ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
    ~management_ip_configuration ~virtual_hub __resource_id =
  let __resource_type = "azurerm_firewall" in
  let __resource =
    azurerm_firewall ?dns_proxy_enabled ?dns_servers
      ?firewall_policy_id ?id ?private_ip_ranges ?tags
      ?threat_intel_mode ?zones ?timeouts ~location ~name
      ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
      ~management_ip_configuration ~virtual_hub ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall __resource);
  let __resource_attributes =
    ({
       dns_proxy_enabled =
         Prop.computed __resource_type __resource_id
           "dns_proxy_enabled";
       dns_servers =
         Prop.computed __resource_type __resource_id "dns_servers";
       firewall_policy_id =
         Prop.computed __resource_type __resource_id
           "firewall_policy_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_ranges =
         Prop.computed __resource_type __resource_id
           "private_ip_ranges";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       sku_tier =
         Prop.computed __resource_type __resource_id "sku_tier";
       tags = Prop.computed __resource_type __resource_id "tags";
       threat_intel_mode =
         Prop.computed __resource_type __resource_id
           "threat_intel_mode";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
