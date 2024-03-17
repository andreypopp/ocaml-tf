(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nat_gateway_public_ip_prefix_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_nat_gateway_public_ip_prefix_association__timeouts *)

type azurerm_nat_gateway_public_ip_prefix_association = {
  id : string prop option; [@option]  (** id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  public_ip_prefix_id : string prop;  (** public_ip_prefix_id *)
  timeouts :
    azurerm_nat_gateway_public_ip_prefix_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway_public_ip_prefix_association *)

let azurerm_nat_gateway_public_ip_prefix_association ?id ?timeouts
    ~nat_gateway_id ~public_ip_prefix_id __resource_id =
  let __resource_type =
    "azurerm_nat_gateway_public_ip_prefix_association"
  in
  let __resource =
    { id; nat_gateway_id; public_ip_prefix_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nat_gateway_public_ip_prefix_association
       __resource);
  ()
