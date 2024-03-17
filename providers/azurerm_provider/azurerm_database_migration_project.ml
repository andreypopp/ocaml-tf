(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_database_migration_project__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_database_migration_project__timeouts *)

type azurerm_database_migration_project = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_name : string prop;  (** service_name *)
  source_platform : string prop;  (** source_platform *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_platform : string prop;  (** target_platform *)
  timeouts : azurerm_database_migration_project__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_database_migration_project *)

let azurerm_database_migration_project ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~service_name ~source_platform
    ~target_platform __resource_id =
  let __resource_type = "azurerm_database_migration_project" in
  let __resource =
    {
      id;
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
