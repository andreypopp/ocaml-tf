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

type azurerm_management_group_subscription_association = {
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_management_group_subscription_association ?id ?timeouts
    ~management_group_id ~subscription_id () :
    azurerm_management_group_subscription_association =
  { id; management_group_id; subscription_id; timeouts }

type t = {
  id : string prop;
  management_group_id : string prop;
  subscription_id : string prop;
}

let register ?tf_module ?id ?timeouts ~management_group_id
    ~subscription_id __resource_id =
  let __resource_type =
    "azurerm_management_group_subscription_association"
  in
  let __resource =
    azurerm_management_group_subscription_association ?id ?timeouts
      ~management_group_id ~subscription_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_subscription_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
     }
      : t)
  in
  __resource_attributes
