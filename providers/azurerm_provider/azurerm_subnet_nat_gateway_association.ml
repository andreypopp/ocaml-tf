(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet_nat_gateway_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_subnet_nat_gateway_association__timeouts *)

type azurerm_subnet_nat_gateway_association = {
  nat_gateway_id : string;  (** nat_gateway_id *)
  subnet_id : string;  (** subnet_id *)
  timeouts : azurerm_subnet_nat_gateway_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_nat_gateway_association *)

let azurerm_subnet_nat_gateway_association ?timeouts ~nat_gateway_id
    ~subnet_id __resource_id =
  let __resource_type = "azurerm_subnet_nat_gateway_association" in
  let __resource = { nat_gateway_id; subnet_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_nat_gateway_association __resource);
  ()
