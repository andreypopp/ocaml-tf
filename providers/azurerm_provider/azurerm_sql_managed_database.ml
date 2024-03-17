(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sql_managed_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sql_managed_database__timeouts *)

type azurerm_sql_managed_database = {
  location : string;  (** location *)
  name : string;  (** name *)
  sql_managed_instance_id : string;  (** sql_managed_instance_id *)
  timeouts : azurerm_sql_managed_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_database *)

let azurerm_sql_managed_database ?timeouts ~location ~name
    ~sql_managed_instance_id __resource_id =
  let __resource_type = "azurerm_sql_managed_database" in
  let __resource =
    { location; name; sql_managed_instance_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_managed_database __resource);
  ()
