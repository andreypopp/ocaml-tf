(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_lb__frontend_ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id : string option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  id : string;  (** id *)
  inbound_nat_rules : string list;  (** inbound_nat_rules *)
  load_balancer_rules : string list;  (** load_balancer_rules *)
  name : string;  (** name *)
  outbound_rules : string list;  (** outbound_rules *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string option; [@option]
      (** private_ip_address_allocation *)
  private_ip_address_version : string option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  public_ip_prefix_id : string option; [@option]
      (** public_ip_prefix_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
  zones : string list option; [@option]  (** zones *)
}
[@@deriving yojson_of]
(** azurerm_lb__frontend_ip_configuration *)

type azurerm_lb__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb__timeouts *)

type azurerm_lb = {
  edge_zone : string option; [@option]  (** edge_zone *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  sku_tier : string option; [@option]  (** sku_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  frontend_ip_configuration :
    azurerm_lb__frontend_ip_configuration list;
  timeouts : azurerm_lb__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb *)

let azurerm_lb ?edge_zone ?sku ?sku_tier ?tags ?timeouts ~location
    ~name ~resource_group_name ~frontend_ip_configuration
    __resource_id =
  let __resource_type = "azurerm_lb" in
  let __resource =
    {
      edge_zone;
      location;
      name;
      resource_group_name;
      sku;
      sku_tier;
      tags;
      frontend_ip_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lb __resource);
  ()
