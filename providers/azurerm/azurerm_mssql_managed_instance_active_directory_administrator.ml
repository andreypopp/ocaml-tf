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

type azurerm_mssql_managed_instance_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  id : string prop option; [@option]  (** id *)
  login_username : string prop;  (** login_username *)
  managed_instance_id : string prop;  (** managed_instance_id *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_active_directory_administrator *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_instance_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login_username
    ~managed_instance_id ~object_id ~tenant_id () :
    azurerm_mssql_managed_instance_active_directory_administrator =
  {
    azuread_authentication_only;
    id;
    login_username;
    managed_instance_id;
    object_id;
    tenant_id;
    timeouts;
  }

type t = {
  azuread_authentication_only : bool prop;
  id : string prop;
  login_username : string prop;
  managed_instance_id : string prop;
  object_id : string prop;
  tenant_id : string prop;
}

let make ?azuread_authentication_only ?id ?timeouts ~login_username
    ~managed_instance_id ~object_id ~tenant_id __id =
  let __type =
    "azurerm_mssql_managed_instance_active_directory_administrator"
  in
  let __attrs =
    ({
       azuread_authentication_only =
         Prop.computed __type __id "azuread_authentication_only";
       id = Prop.computed __type __id "id";
       login_username = Prop.computed __type __id "login_username";
       managed_instance_id =
         Prop.computed __type __id "managed_instance_id";
       object_id = Prop.computed __type __id "object_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_managed_instance_active_directory_administrator
        (azurerm_mssql_managed_instance_active_directory_administrator
           ?azuread_authentication_only ?id ?timeouts ~login_username
           ~managed_instance_id ~object_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?azuread_authentication_only ?id ?timeouts
    ~login_username ~managed_instance_id ~object_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?azuread_authentication_only ?id ?timeouts ~login_username
      ~managed_instance_id ~object_id ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
