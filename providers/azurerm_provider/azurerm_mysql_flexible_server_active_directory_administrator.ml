(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mysql_flexible_server_active_directory_administrator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_active_directory_administrator__timeouts *)

type azurerm_mysql_flexible_server_active_directory_administrator = {
  identity_id : string;  (** identity_id *)
  login : string;  (** login *)
  object_id : string;  (** object_id *)
  server_id : string;  (** server_id *)
  tenant_id : string;  (** tenant_id *)
  timeouts :
    azurerm_mysql_flexible_server_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_active_directory_administrator *)

let azurerm_mysql_flexible_server_active_directory_administrator
    ?timeouts ~identity_id ~login ~object_id ~server_id ~tenant_id
    __resource_id =
  let __resource_type =
    "azurerm_mysql_flexible_server_active_directory_administrator"
  in
  let __resource =
    { identity_id; login; object_id; server_id; tenant_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server_active_directory_administrator
       __resource);
  ()
