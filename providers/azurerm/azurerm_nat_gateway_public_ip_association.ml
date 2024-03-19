(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_nat_gateway_public_ip_association = {
  id : string prop option; [@option]  (** id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway_public_ip_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_nat_gateway_public_ip_association ?id ?timeouts
    ~nat_gateway_id ~public_ip_address_id () :
    azurerm_nat_gateway_public_ip_association =
  { id; nat_gateway_id; public_ip_address_id; timeouts }

type t = {
  id : string prop;
  nat_gateway_id : string prop;
  public_ip_address_id : string prop;
}

let register ?tf_module ?id ?timeouts ~nat_gateway_id
    ~public_ip_address_id __resource_id =
  let __resource_type =
    "azurerm_nat_gateway_public_ip_association"
  in
  let __resource =
    azurerm_nat_gateway_public_ip_association ?id ?timeouts
      ~nat_gateway_id ~public_ip_address_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nat_gateway_public_ip_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       nat_gateway_id =
         Prop.computed __resource_type __resource_id "nat_gateway_id";
       public_ip_address_id =
         Prop.computed __resource_type __resource_id
           "public_ip_address_id";
     }
      : t)
  in
  __resource_attributes
