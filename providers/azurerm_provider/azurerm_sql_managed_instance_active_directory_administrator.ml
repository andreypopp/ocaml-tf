(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_managed_instance_active_directory_administrator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance_active_directory_administrator__timeouts *)

type azurerm_sql_managed_instance_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  managed_instance_name : string prop;  (** managed_instance_name *)
  object_id : string prop;  (** object_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_sql_managed_instance_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance_active_directory_administrator *)

type t = {
  azuread_authentication_only : bool prop;
  id : string prop;
  login : string prop;
  managed_instance_name : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  tenant_id : string prop;
}

let azurerm_sql_managed_instance_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login
    ~managed_instance_name ~object_id ~resource_group_name ~tenant_id
    __resource_id =
  let __resource_type =
    "azurerm_sql_managed_instance_active_directory_administrator"
  in
  let __resource =
    ({
       azuread_authentication_only;
       id;
       login;
       managed_instance_name;
       object_id;
       resource_group_name;
       tenant_id;
       timeouts;
     }
      : azurerm_sql_managed_instance_active_directory_administrator)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_managed_instance_active_directory_administrator
       __resource);
  let __resource_attributes =
    ({
       azuread_authentication_only =
         Prop.computed __resource_type __resource_id
           "azuread_authentication_only";
       id = Prop.computed __resource_type __resource_id "id";
       login = Prop.computed __resource_type __resource_id "login";
       managed_instance_name =
         Prop.computed __resource_type __resource_id
           "managed_instance_name";
       object_id =
         Prop.computed __resource_type __resource_id "object_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
