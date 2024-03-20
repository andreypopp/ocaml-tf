(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~scope ~workspace_id __id =
  let __type = "azurerm_security_center_workspace" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       scope = Prop.computed __type __id "scope";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_workspace
        (azurerm_security_center_workspace ?id ?timeouts ~scope
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~scope ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~scope ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
