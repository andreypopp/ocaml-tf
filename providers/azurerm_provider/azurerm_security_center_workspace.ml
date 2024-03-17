(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_workspace__timeouts *)

type azurerm_security_center_workspace = {
  id : string prop option; [@option]  (** id *)
  scope : string prop;  (** scope *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : azurerm_security_center_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_workspace *)

let azurerm_security_center_workspace ?id ?timeouts ~scope
    ~workspace_id __resource_id =
  let __resource_type = "azurerm_security_center_workspace" in
  let __resource = { id; scope; workspace_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_workspace __resource);
  ()
