(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mariadb_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_database__timeouts *)

type azurerm_mariadb_database = {
  charset : string prop;  (** charset *)
  collation : string prop;  (** collation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  timeouts : azurerm_mariadb_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_database *)

let azurerm_mariadb_database ?id ?timeouts ~charset ~collation ~name
    ~resource_group_name ~server_name __resource_id =
  let __resource_type = "azurerm_mariadb_database" in
  let __resource =
    {
      charset;
      collation;
      id;
      name;
      resource_group_name;
      server_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_database __resource);
  ()
