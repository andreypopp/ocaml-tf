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

type azurerm_synapse_workspace_aad_admin = {
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_aad_admin *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_aad_admin ?id ?timeouts ~login
    ~object_id ~synapse_workspace_id ~tenant_id () :
    azurerm_synapse_workspace_aad_admin =
  { id; login; object_id; synapse_workspace_id; tenant_id; timeouts }

type t = {
  id : string prop;
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
}

let make ?id ?timeouts ~login ~object_id ~synapse_workspace_id
    ~tenant_id __id =
  let __type = "azurerm_synapse_workspace_aad_admin" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
       object_id = Prop.computed __type __id "object_id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace_aad_admin
        (azurerm_synapse_workspace_aad_admin ?id ?timeouts ~login
           ~object_id ~synapse_workspace_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~login ~object_id
    ~synapse_workspace_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~login ~object_id ~synapse_workspace_id
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
