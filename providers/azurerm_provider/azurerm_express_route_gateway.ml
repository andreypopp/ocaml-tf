(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_gateway__timeouts *)

type azurerm_express_route_gateway = {
  allow_non_virtual_wan_traffic : bool prop option; [@option]
      (** allow_non_virtual_wan_traffic *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_units : float prop;  (** scale_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts : azurerm_express_route_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_gateway *)

let azurerm_express_route_gateway ?allow_non_virtual_wan_traffic ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id __resource_id =
  let __resource_type = "azurerm_express_route_gateway" in
  let __resource =
    {
      allow_non_virtual_wan_traffic;
      id;
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
