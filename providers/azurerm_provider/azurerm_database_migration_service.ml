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

let azurerm_database_migration_service ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku_name ~subnet_id __resource_id =
  let __resource_type = "azurerm_database_migration_service" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      sku_name;
      subnet_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_database_migration_service __resource);
  ()
