(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_database_migration_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_database_migration_project__timeouts *)

type azurerm_database_migration_project = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  service_name : string;  (** service_name *)
  source_platform : string;  (** source_platform *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_platform : string;  (** target_platform *)
  timeouts : azurerm_database_migration_project__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_database_migration_project *)

let azurerm_database_migration_project ?tags ?timeouts ~location
    ~name ~resource_group_name ~service_name ~source_platform
    ~target_platform __resource_id =
  let __resource_type = "azurerm_database_migration_project" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      service_name;
      source_platform;
      tags;
      target_platform;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_database_migration_project __resource);
  ()
