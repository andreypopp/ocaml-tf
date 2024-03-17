(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server_dns_alias__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_dns_alias__timeouts *)

type azurerm_mssql_server_dns_alias = {
  mssql_server_id : string;  (** mssql_server_id *)
  name : string;  (** name *)
  timeouts : azurerm_mssql_server_dns_alias__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_dns_alias *)

let azurerm_mssql_server_dns_alias ?timeouts ~mssql_server_id ~name
    __resource_id =
  let __resource_type = "azurerm_mssql_server_dns_alias" in
  let __resource = { mssql_server_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_dns_alias __resource);
  ()
