(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_express_route_port__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__identity *)

type azurerm_express_route_port__link1 = {
  admin_enabled : bool option; [@option]  (** admin_enabled *)
  connector_type : string;  (** connector_type *)
  id : string;  (** id *)
  interface_name : string;  (** interface_name *)
  macsec_cak_keyvault_secret_id : string option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool option; [@option]
      (** macsec_sci_enabled *)
  patch_panel_id : string;  (** patch_panel_id *)
  rack_id : string;  (** rack_id *)
  router_name : string;  (** router_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__link1 *)

type azurerm_express_route_port__link2 = {
  admin_enabled : bool option; [@option]  (** admin_enabled *)
  connector_type : string;  (** connector_type *)
  id : string;  (** id *)
  interface_name : string;  (** interface_name *)
  macsec_cak_keyvault_secret_id : string option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool option; [@option]
      (** macsec_sci_enabled *)
  patch_panel_id : string;  (** patch_panel_id *)
  rack_id : string;  (** rack_id *)
  router_name : string;  (** router_name *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__link2 *)

type azurerm_express_route_port__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_port__timeouts *)

type azurerm_express_route_port = {
  bandwidth_in_gbps : float;  (** bandwidth_in_gbps *)
  encapsulation : string;  (** encapsulation *)
  location : string;  (** location *)
  name : string;  (** name *)
  peering_location : string;  (** peering_location *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_express_route_port__identity list;
  link1 : azurerm_express_route_port__link1 list;
  link2 : azurerm_express_route_port__link2 list;
  timeouts : azurerm_express_route_port__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_port *)

let azurerm_express_route_port ?tags ?timeouts ~bandwidth_in_gbps
    ~encapsulation ~location ~name ~peering_location
    ~resource_group_name ~identity ~link1 ~link2 __resource_id =
  let __resource_type = "azurerm_express_route_port" in
  let __resource =
    {
      bandwidth_in_gbps;
      encapsulation;
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
