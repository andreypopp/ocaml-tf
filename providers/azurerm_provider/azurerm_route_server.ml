(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_server__timeouts *)

type azurerm_route_server = {
  branch_to_branch_traffic_enabled : bool option; [@option]
      (** branch_to_branch_traffic_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_ip_address_id : string;  (** public_ip_address_id *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_route_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server *)

let azurerm_route_server ?branch_to_branch_traffic_enabled ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id __resource_id =
  let __resource_type = "azurerm_route_server" in
  let __resource =
    {
      branch_to_branch_traffic_enabled;
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
