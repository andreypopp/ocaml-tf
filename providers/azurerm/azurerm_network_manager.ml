(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scope = {
  management_group_ids : string prop list option; [@option]
      (** management_group_ids *)
  subscription_ids : string prop list option; [@option]
      (** subscription_ids *)
}
[@@deriving yojson_of]
(** scope *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cross_tenant_scopes = {
  management_groups : string prop list;  (** management_groups *)
  subscriptions : string prop list;  (** subscriptions *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_network_manager = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_accesses : string prop list;  (** scope_accesses *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  scope : scope list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager *)

let scope ?management_group_ids ?subscription_ids () : scope =
  { management_group_ids; subscription_ids }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager ?description ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~scope_accesses ~scope () :
    azurerm_network_manager =
  {
    description;
    id;
    location;
    name;
    resource_group_name;
    scope_accesses;
    tags;
    scope;
    timeouts;
  }

type t = {
  cross_tenant_scopes : cross_tenant_scopes list prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_accesses : string list prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~scope_accesses ~scope __id =
  let __type = "azurerm_network_manager" in
  let __attrs =
    ({
       cross_tenant_scopes =
         Prop.computed __type __id "cross_tenant_scopes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope_accesses = Prop.computed __type __id "scope_accesses";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager
        (azurerm_network_manager ?description ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~scope_accesses
           ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~scope_accesses ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~scope_accesses ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
