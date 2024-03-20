(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_desktop_workspace_application_group_association = {
  application_group_id : string prop;  (** application_group_id *)
  id : string prop option; [@option]  (** id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_workspace_application_group_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_virtual_desktop_workspace_application_group_association
    ?id ?timeouts ~application_group_id ~workspace_id () :
    azurerm_virtual_desktop_workspace_application_group_association =
  { application_group_id; id; workspace_id; timeouts }

type t = {
  application_group_id : string prop;
  id : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~application_group_id ~workspace_id __id =
  let __type =
    "azurerm_virtual_desktop_workspace_application_group_association"
  in
  let __attrs =
    ({
       application_group_id =
         Prop.computed __type __id "application_group_id";
       id = Prop.computed __type __id "id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_workspace_application_group_association
        (azurerm_virtual_desktop_workspace_application_group_association
           ?id ?timeouts ~application_group_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~application_group_id
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~application_group_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
