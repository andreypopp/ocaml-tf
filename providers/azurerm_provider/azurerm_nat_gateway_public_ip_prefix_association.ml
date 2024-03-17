(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_nat_gateway_public_ip_prefix_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_nat_gateway_public_ip_prefix_association__timeouts *)

type azurerm_nat_gateway_public_ip_prefix_association = {
  nat_gateway_id : string;  (** nat_gateway_id *)
  public_ip_prefix_id : string;  (** public_ip_prefix_id *)
  timeouts :
    azurerm_nat_gateway_public_ip_prefix_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway_public_ip_prefix_association *)

let azurerm_nat_gateway_public_ip_prefix_association ?timeouts
    ~nat_gateway_id ~public_ip_prefix_id __resource_id =
  let __resource_type =
    "azurerm_nat_gateway_public_ip_prefix_association"
  in
  let __resource =
    { nat_gateway_id; public_ip_prefix_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nat_gateway_public_ip_prefix_association
       __resource);
  ()
