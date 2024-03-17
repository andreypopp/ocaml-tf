(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_database__timeouts *)

type azurerm_postgresql_flexible_server_database = {
  charset : string prop option; [@option]  (** charset *)
  collation : string prop option; [@option]  (** collation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  timeouts :
    azurerm_postgresql_flexible_server_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_database *)

let azurerm_postgresql_flexible_server_database ?charset ?collation
    ?id ?timeouts ~name ~server_id __resource_id =
  let __resource_type =
    "azurerm_postgresql_flexible_server_database"
  in
  let __resource =
    { charset; collation; id; name; server_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_database __resource);
  ()
