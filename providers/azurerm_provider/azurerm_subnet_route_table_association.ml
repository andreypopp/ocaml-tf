(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_subnet_route_table_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_subnet_route_table_association__timeouts *)

type azurerm_subnet_route_table_association = {
  route_table_id : string;  (** route_table_id *)
  subnet_id : string;  (** subnet_id *)
  timeouts : azurerm_subnet_route_table_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_route_table_association *)

let azurerm_subnet_route_table_association ?timeouts ~route_table_id
    ~subnet_id __resource_id =
  let __resource_type = "azurerm_subnet_route_table_association" in
  let __resource = { route_table_id; subnet_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_route_table_association __resource);
  ()
