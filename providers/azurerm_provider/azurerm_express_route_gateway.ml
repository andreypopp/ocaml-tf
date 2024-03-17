(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_gateway__timeouts *)

type azurerm_express_route_gateway = {
  allow_non_virtual_wan_traffic : bool option; [@option]
      (** allow_non_virtual_wan_traffic *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scale_units : float;  (** scale_units *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  timeouts : azurerm_express_route_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_gateway *)

let azurerm_express_route_gateway ?allow_non_virtual_wan_traffic
    ?tags ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id __resource_id =
  let __resource_type = "azurerm_express_route_gateway" in
  let __resource =
    {
      allow_non_virtual_wan_traffic;
      location;
      name;
      resource_group_name;
      scale_units;
      tags;
      virtual_hub_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_gateway __resource);
  ()
