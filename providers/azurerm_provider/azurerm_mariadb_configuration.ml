(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mariadb_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_configuration__timeouts *)

type azurerm_mariadb_configuration = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  value : string;  (** value *)
  timeouts : azurerm_mariadb_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_configuration *)

let azurerm_mariadb_configuration ?timeouts ~name
    ~resource_group_name ~server_name ~value __resource_id =
  let __resource_type = "azurerm_mariadb_configuration" in
  let __resource =
    { name; resource_group_name; server_name; value; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_configuration __resource);
  ()