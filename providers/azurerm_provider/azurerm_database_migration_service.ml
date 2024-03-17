(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_database_migration_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_database_migration_service__timeouts *)

type azurerm_database_migration_service = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_database_migration_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_database_migration_service *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_database_migration_service ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku_name ~subnet_id __resource_id =
  let __resource_type = "azurerm_database_migration_service" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       sku_name;
       subnet_id;
       tags;
       timeouts;
     }
      : azurerm_database_migration_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_database_migration_service __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
