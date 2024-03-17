(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_subscription_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association__timeouts *)

type azurerm_management_group_subscription_association = {
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts :
    azurerm_management_group_subscription_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association *)

type t = {
  id : string prop;
  management_group_id : string prop;
  subscription_id : string prop;
}

let azurerm_management_group_subscription_association ?id ?timeouts
    ~management_group_id ~subscription_id __resource_id =
  let __resource_type =
    "azurerm_management_group_subscription_association"
  in
  let __resource =
    ({ id; management_group_id; subscription_id; timeouts }
      : azurerm_management_group_subscription_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
