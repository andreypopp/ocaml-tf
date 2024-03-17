(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mariadb_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_database__timeouts *)

type azurerm_mariadb_database = {
  charset : string;  (** charset *)
  collation : string;  (** collation *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  timeouts : azurerm_mariadb_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_database *)

let azurerm_mariadb_database ?timeouts ~charset ~collation ~name
    ~resource_group_name ~server_name __resource_id =
  let __resource_type = "azurerm_mariadb_database" in
  let __resource =
    {
      charset;
      collation;
      name;
      resource_group_name;
      server_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_database __resource);
  ()
