(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_port__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__identity *)

type azurerm_express_route_port__link1 = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  connector_type : string prop;  (** connector_type *)
  id : string prop;  (** id *)
  interface_name : string prop;  (** interface_name *)
  macsec_cak_keyvault_secret_id : string prop option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string prop option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool prop option; [@option]
      (** macsec_sci_enabled *)
  patch_panel_id : string prop;  (** patch_panel_id *)
  rack_id : string prop;  (** rack_id *)
  router_name : string prop;  (** router_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__link1 *)

type azurerm_express_route_port__link2 = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  connector_type : string prop;  (** connector_type *)
  id : string prop;  (** id *)
  interface_name : string prop;  (** interface_name *)
  macsec_cak_keyvault_secret_id : string prop option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string prop option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool prop option; [@option]
      (** macsec_sci_enabled *)
  patch_panel_id : string prop;  (** patch_panel_id *)
  rack_id : string prop;  (** rack_id *)
  router_name : string prop;  (** router_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__link2 *)

type azurerm_express_route_port__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__timeouts *)

type azurerm_express_route_port = {
  bandwidth_in_gbps : float prop;  (** bandwidth_in_gbps *)
  billing_type : string prop option; [@option]  (** billing_type *)
  encapsulation : string prop;  (** encapsulation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  peering_location : string prop;  (** peering_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_express_route_port__identity list;
  link1 : azurerm_express_route_port__link1 list;
  link2 : azurerm_express_route_port__link2 list;
  timeouts : azurerm_express_route_port__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_port *)

let azurerm_express_route_port ?billing_type ?id ?tags ?timeouts
    ~bandwidth_in_gbps ~encapsulation ~location ~name
    ~peering_location ~resource_group_name ~identity ~link1 ~link2
    __resource_id =
  let __resource_type = "azurerm_express_route_port" in
  let __resource =
    {
      bandwidth_in_gbps;
      billing_type;
      encapsulation;
      id;
      location;
      name;
      peering_location;
      resource_group_name;
      tags;
      identity;
      link1;
      link2;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_port __resource);
  ()
