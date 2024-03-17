(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lb__frontend_ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  id : string prop;  (** id *)
  inbound_nat_rules : string prop list;  (** inbound_nat_rules *)
  load_balancer_rules : string prop list;  (** load_balancer_rules *)
  name : string prop;  (** name *)
  outbound_rules : string prop list;  (** outbound_rules *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop option; [@option]
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  zones : string prop list option; [@option]  (** zones *)
}
[@@deriving yojson_of]
(** azurerm_lb__frontend_ip_configuration *)

type azurerm_lb__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lb__timeouts *)

type azurerm_lb = {
  edge_zone : string prop option; [@option]  (** edge_zone *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  frontend_ip_configuration :
    azurerm_lb__frontend_ip_configuration list;
  timeouts : azurerm_lb__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb *)

let azurerm_lb ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~frontend_ip_configuration
    __resource_id =
  let __resource_type = "azurerm_lb" in
  let __resource =
    {
      edge_zone;
      id;
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
