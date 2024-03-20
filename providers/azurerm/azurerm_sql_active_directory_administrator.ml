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

type azurerm_sql_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_active_directory_administrator *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login ~object_id
    ~resource_group_name ~server_name ~tenant_id () :
    azurerm_sql_active_directory_administrator =
  {
    azuread_authentication_only;
    id;
    login;
    object_id;
    resource_group_name;
    server_name;
    tenant_id;
    timeouts;
  }

type t = {
  azuread_authentication_only : bool prop;
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

let make ?azuread_authentication_only ?id ?timeouts ~login ~object_id
    ~resource_group_name ~server_name ~tenant_id __id =
  let __type = "azurerm_sql_active_directory_administrator" in
  let __attrs =
    ({
       azuread_authentication_only =
         Prop.computed __type __id "azuread_authentication_only";
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
       object_id = Prop.computed __type __id "object_id";
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
      yojson_of_azurerm_sql_active_directory_administrator
        (azurerm_sql_active_directory_administrator
           ?azuread_authentication_only ?id ?timeouts ~login
           ~object_id ~resource_group_name ~server_name ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?azuread_authentication_only ?id ?timeouts
    ~login ~object_id ~resource_group_name ~server_name ~tenant_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?azuread_authentication_only ?id ?timeouts ~login ~object_id
      ~resource_group_name ~server_name ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
