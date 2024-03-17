(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_managed_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sql_managed_database__timeouts *)

type azurerm_sql_managed_database = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  sql_managed_instance_id : string prop;
      (** sql_managed_instance_id *)
  timeouts : azurerm_sql_managed_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_database *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  sql_managed_instance_id : string prop;
}

let azurerm_sql_managed_database ?id ?timeouts ~location ~name
    ~sql_managed_instance_id __resource_id =
  let __resource_type = "azurerm_sql_managed_database" in
  let __resource =
    ({ id; location; name; sql_managed_instance_id; timeouts }
      : azurerm_sql_managed_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_managed_database __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       sql_managed_instance_id =
         Prop.computed __resource_type __resource_id
           "sql_managed_instance_id";
     }
      : t)
  in
  __resource_attributes
