(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_postgresql_flexible_server_active_directory_administrator = {
  id : string prop option; [@option]  (** id *)
  object_id : string prop;  (** object_id *)
  principal_name : string prop;  (** principal_name *)
  principal_type : string prop;  (** principal_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_active_directory_administrator *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_postgresql_flexible_server_active_directory_administrator
    ?id ?timeouts ~object_id ~principal_name ~principal_type
    ~resource_group_name ~server_name ~tenant_id () :
    azurerm_postgresql_flexible_server_active_directory_administrator
    =
  {
    id;
    object_id;
    principal_name;
    principal_type;
    resource_group_name;
    server_name;
    tenant_id;
    timeouts;
  }

type t = {
  id : string prop;
  object_id : string prop;
  principal_name : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

let make ?id ?timeouts ~object_id ~principal_name ~principal_type
    ~resource_group_name ~server_name ~tenant_id __id =
  let __type =
    "azurerm_postgresql_flexible_server_active_directory_administrator"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       object_id = Prop.computed __type __id "object_id";
       principal_name = Prop.computed __type __id "principal_name";
       principal_type = Prop.computed __type __id "principal_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_flexible_server_active_directory_administrator
        (azurerm_postgresql_flexible_server_active_directory_administrator
           ?id ?timeouts ~object_id ~principal_name ~principal_type
           ~resource_group_name ~server_name ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~object_id ~principal_name
    ~principal_type ~resource_group_name ~server_name ~tenant_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~object_id ~principal_name ~principal_type
      ~resource_group_name ~server_name ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
