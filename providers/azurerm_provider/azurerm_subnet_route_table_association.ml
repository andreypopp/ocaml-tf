(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet_route_table_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_subnet_route_table_association__timeouts *)

type azurerm_subnet_route_table_association = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : azurerm_subnet_route_table_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_route_table_association *)

type t = {
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

let azurerm_subnet_route_table_association ?id ?timeouts
    ~route_table_id ~subnet_id __resource_id =
  let __resource_type = "azurerm_subnet_route_table_association" in
  let __resource =
    ({ id; route_table_id; subnet_id; timeouts }
      : azurerm_subnet_route_table_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_route_table_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       route_table_id =
         Prop.computed __resource_type __resource_id "route_table_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
