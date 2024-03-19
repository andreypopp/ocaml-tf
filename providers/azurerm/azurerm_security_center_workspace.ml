(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_workspace = {
  id : string prop option; [@option]  (** id *)
  scope : string prop;  (** scope *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_workspace *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_workspace ?id ?timeouts ~scope
    ~workspace_id () : azurerm_security_center_workspace =
  { id; scope; workspace_id; timeouts }

type t = {
  id : string prop;
  scope : string prop;
  workspace_id : string prop;
}

let register ?tf_module ?id ?timeouts ~scope ~workspace_id
    __resource_id =
  let __resource_type = "azurerm_security_center_workspace" in
  let __resource =
    azurerm_security_center_workspace ?id ?timeouts ~scope
      ~workspace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_workspace __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       scope = Prop.computed __resource_type __resource_id "scope";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
