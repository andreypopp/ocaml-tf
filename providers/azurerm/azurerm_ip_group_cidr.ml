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

type azurerm_ip_group_cidr = {
  cidr : string prop;  (** cidr *)
  id : string prop option; [@option]  (** id *)
  ip_group_id : string prop;  (** ip_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_ip_group_cidr *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id () :
    azurerm_ip_group_cidr =
  { cidr; id; ip_group_id; timeouts }

type t = {
  cidr : string prop;
  id : string prop;
  ip_group_id : string prop;
}

let register ?tf_module ?id ?timeouts ~cidr ~ip_group_id
    __resource_id =
  let __resource_type = "azurerm_ip_group_cidr" in
  let __resource =
    azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_ip_group_cidr __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       id = Prop.computed __resource_type __resource_id "id";
       ip_group_id =
         Prop.computed __resource_type __resource_id "ip_group_id";
     }
      : t)
  in
  __resource_attributes
