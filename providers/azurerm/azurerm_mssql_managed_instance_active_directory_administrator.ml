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

let register ?tf_module ?azuread_authentication_only ?id ?timeouts
    ~login_username ~managed_instance_id ~object_id ~tenant_id
    __resource_id =
  let __resource_type =
    "azurerm_mssql_managed_instance_active_directory_administrator"
  in
  let __resource =
    azurerm_mssql_managed_instance_active_directory_administrator
      ?azuread_authentication_only ?id ?timeouts ~login_username
      ~managed_instance_id ~object_id ~tenant_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance_active_directory_administrator
       __resource);
  let __resource_attributes =
    ({
       azuread_authentication_only =
         Prop.computed __resource_type __resource_id
           "azuread_authentication_only";
       id = Prop.computed __resource_type __resource_id "id";
       login_username =
         Prop.computed __resource_type __resource_id "login_username";
       managed_instance_id =
         Prop.computed __resource_type __resource_id
           "managed_instance_id";
       object_id =
         Prop.computed __resource_type __resource_id "object_id";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
