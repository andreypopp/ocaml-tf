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

type azurerm_user_assigned_identity = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_user_assigned_identity *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_user_assigned_identity ?id ?tags ?timeouts ~location
    ~name ~resource_group_name () : azurerm_user_assigned_identity =
  { id; location; name; resource_group_name; tags; timeouts }

type t = {
  client_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    __id =
  let __type = "azurerm_user_assigned_identity" in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_user_assigned_identity
        (azurerm_user_assigned_identity ?id ?tags ?timeouts ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
