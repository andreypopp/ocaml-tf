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

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  source_platform : string prop;
  tags : (string * string) list prop;
  target_platform : string prop;
}

let azurerm_database_migration_project ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~service_name ~source_platform
    ~target_platform __resource_id =
  let __resource_type = "azurerm_database_migration_project" in
  let __resource =
    ({
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
      : azurerm_database_migration_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_database_migration_project __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       source_platform =
         Prop.computed __resource_type __resource_id
           "source_platform";
       tags = Prop.computed __resource_type __resource_id "tags";
       target_platform =
         Prop.computed __resource_type __resource_id
           "target_platform";
     }
      : t)
  in
  __resource_attributes
