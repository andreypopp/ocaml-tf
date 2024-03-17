(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_server__timeouts *)

type azurerm_route_server = {
  branch_to_branch_traffic_enabled : bool prop option; [@option]
      (** branch_to_branch_traffic_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_route_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server *)

let azurerm_route_server ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id __resource_id =
  let __resource_type = "azurerm_route_server" in
  let __resource =
    {
      branch_to_branch_traffic_enabled;
      id;
      location;
      name;
      public_ip_address_id;
      resource_group_name;
      sku;
      subnet_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_server __resource);
  ()
