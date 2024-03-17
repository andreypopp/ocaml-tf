(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_private_link_scoped_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scoped_service__timeouts *)

type azurerm_monitor_private_link_scoped_service = {
  id : string option; [@option]  (** id *)
  linked_resource_id : string;  (** linked_resource_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scope_name : string;  (** scope_name *)
  timeouts :
    azurerm_monitor_private_link_scoped_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scoped_service *)

let azurerm_monitor_private_link_scoped_service ?id ?timeouts
    ~linked_resource_id ~name ~resource_group_name ~scope_name
    __resource_id =
  let __resource_type =
    "azurerm_monitor_private_link_scoped_service"
  in
  let __resource =
    {
      id;
      linked_resource_id;
      name;
      resource_group_name;
      scope_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_private_link_scoped_service __resource);
  ()
