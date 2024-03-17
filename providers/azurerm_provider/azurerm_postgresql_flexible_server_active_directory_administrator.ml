(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server_active_directory_administrator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_active_directory_administrator__timeouts *)

type azurerm_postgresql_flexible_server_active_directory_administrator = {
  id : string prop option; [@option]  (** id *)
  object_id : string prop;  (** object_id *)
  principal_name : string prop;  (** principal_name *)
  principal_type : string prop;  (** principal_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_postgresql_flexible_server_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_active_directory_administrator *)

let azurerm_postgresql_flexible_server_active_directory_administrator
    ?id ?timeouts ~object_id ~principal_name ~principal_type
    ~resource_group_name ~server_name ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_postgresql_flexible_server_active_directory_administrator"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_active_directory_administrator
       __resource);
  ()
