(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination_nat__backend_config = {
  port : float prop;  (** port *)
  public_ip_address : string prop;  (** public_ip_address *)
}
[@@deriving yojson_of]
(** destination_nat__backend_config *)

type destination_nat__frontend_config = {
  port : float prop;  (** port *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
}
[@@deriving yojson_of]
(** destination_nat__frontend_config *)

type destination_nat = {
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  backend_config : destination_nat__backend_config list;
  frontend_config : destination_nat__frontend_config list;
}
[@@deriving yojson_of]
(** destination_nat *)

type dns_settings = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  use_azure_dns : bool prop option; [@option]  (** use_azure_dns *)
}
[@@deriving yojson_of]
(** dns_settings *)

type network_profile = {
  egress_nat_ip_address_ids : string prop list option; [@option]
      (** egress_nat_ip_address_ids *)
  network_virtual_appliance_id : string prop;
      (** network_virtual_appliance_id *)
  public_ip_address_ids : string prop list;
      (** public_ip_address_ids *)
  trusted_address_ranges : string prop list option; [@option]
      (** trusted_address_ranges *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
}
[@@deriving yojson_of]
(** network_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  rulestack_id : string prop;  (** rulestack_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  destination_nat : destination_nat list;
  dns_settings : dns_settings list;
  network_profile : network_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack *)

let destination_nat__backend_config ~port ~public_ip_address () :
    destination_nat__backend_config =
  { port; public_ip_address }

let destination_nat__frontend_config ~port ~public_ip_address_id () :
    destination_nat__frontend_config =
  { port; public_ip_address_id }

let destination_nat ~name ~protocol ~backend_config ~frontend_config
    () : destination_nat =
  { name; protocol; backend_config; frontend_config }

let dns_settings ?dns_servers ?use_azure_dns () : dns_settings =
  { dns_servers; use_azure_dns }

let network_profile ?egress_nat_ip_address_ids
    ?trusted_address_ranges ~network_virtual_appliance_id
    ~public_ip_address_ids ~virtual_hub_id () : network_profile =
  {
    egress_nat_ip_address_ids;
    network_virtual_appliance_id;
    public_ip_address_ids;
    trusted_address_ranges;
    virtual_hub_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack
    ?id ?tags ?timeouts ~name ~resource_group_name ~rulestack_id
    ~destination_nat ~dns_settings ~network_profile () :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack
    =
  {
    id;
    name;
    resource_group_name;
    rulestack_id;
    tags;
    destination_nat;
    dns_settings;
    network_profile;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name ~rulestack_id ~destination_nat ~dns_settings
    ~network_profile __resource_id =
  let __resource_type =
    "azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack"
  in
  let __resource =
    azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack
      ?id ?tags ?timeouts ~name ~resource_group_name ~rulestack_id
      ~destination_nat ~dns_settings ~network_profile ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       rulestack_id =
         Prop.computed __resource_type __resource_id "rulestack_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
