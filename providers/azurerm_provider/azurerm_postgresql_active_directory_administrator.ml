(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_active_directory_administrator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_active_directory_administrator__timeouts *)

type azurerm_postgresql_active_directory_administrator = {
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_postgresql_active_directory_administrator__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_active_directory_administrator *)

let azurerm_postgresql_active_directory_administrator ?id ?timeouts
    ~login ~object_id ~resource_group_name ~server_name ~tenant_id
    __resource_id =
  let __resource_type =
    "azurerm_postgresql_active_directory_administrator"
  in
  let __resource =
    {
      id;
      login;
      object_id;
      resource_group_name;
      server_name;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_active_directory_administrator
       __resource);
  ()
