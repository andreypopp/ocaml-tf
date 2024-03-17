(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server_active_directory_administrator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_active_directory_administrator__timeouts *)

type azurerm_postgresql_flexible_server_active_directory_administrator = {
  object_id : string;  (** object_id *)
  principal_name : string;  (** principal_name *)
  principal_type : string;  (** principal_type *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  tenant_id : string;  (** tenant_id *)
  timeouts :
    azurerm_postgresql_flexible_server_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_active_directory_administrator *)

let azurerm_postgresql_flexible_server_active_directory_administrator
    ?timeouts ~object_id ~principal_name ~principal_type
    ~resource_group_name ~server_name ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_postgresql_flexible_server_active_directory_administrator"
  in
  let __resource =
    {
      object_id;
      principal_name;
      principal_type;
      resource_group_name;
      server_name;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_active_directory_administrator
       __resource);
  ()
