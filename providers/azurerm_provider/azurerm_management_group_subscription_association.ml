(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_subscription_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association__timeouts *)

type azurerm_management_group_subscription_association = {
  management_group_id : string;  (** management_group_id *)
  subscription_id : string;  (** subscription_id *)
  timeouts :
    azurerm_management_group_subscription_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association *)

let azurerm_management_group_subscription_association ?timeouts
    ~management_group_id ~subscription_id __resource_id =
  let __resource_type =
    "azurerm_management_group_subscription_association"
  in
  let __resource =
    { management_group_id; subscription_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_subscription_association
       __resource);
  ()
