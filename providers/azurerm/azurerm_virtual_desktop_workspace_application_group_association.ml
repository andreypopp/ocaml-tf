(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_workspace_application_group_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_workspace_application_group_association__timeouts *)

type azurerm_virtual_desktop_workspace_application_group_association = {
  application_group_id : string prop;  (** application_group_id *)
  id : string prop option; [@option]  (** id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    azurerm_virtual_desktop_workspace_application_group_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_workspace_application_group_association *)

type t = {
  application_group_id : string prop;
  id : string prop;
  workspace_id : string prop;
}

let azurerm_virtual_desktop_workspace_application_group_association
    ?id ?timeouts ~application_group_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_virtual_desktop_workspace_application_group_association"
  in
  let __resource =
    ({ application_group_id; id; workspace_id; timeouts }
      : azurerm_virtual_desktop_workspace_application_group_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_workspace_application_group_association
       __resource);
  let __resource_attributes =
    ({
       application_group_id =
         Prop.computed __resource_type __resource_id
           "application_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
