(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mariadb_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_configuration__timeouts *)

type azurerm_mariadb_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  value : string prop;  (** value *)
  timeouts : azurerm_mariadb_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_configuration *)

let azurerm_mariadb_configuration ?id ?timeouts ~name
    ~resource_group_name ~server_name ~value __resource_id =
  let __resource_type = "azurerm_mariadb_configuration" in
  let __resource =
    { id; name; resource_group_name; server_name; value; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_configuration __resource);
  ()
