(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_managed_instance_active_directory_administrator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_active_directory_administrator__timeouts *)

type azurerm_mssql_managed_instance_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  id : string prop option; [@option]  (** id *)
  login_username : string prop;  (** login_username *)
  managed_instance_id : string prop;  (** managed_instance_id *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_mssql_managed_instance_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_active_directory_administrator *)

let azurerm_mssql_managed_instance_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login_username
    ~managed_instance_id ~object_id ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_mssql_managed_instance_active_directory_administrator"
  in
  let __resource =
    {
      azuread_authentication_only;
      id;
      login_username;
      managed_instance_id;
      object_id;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance_active_directory_administrator
       __resource);
  ()
