(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_outbound_firewall_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mssql_outbound_firewall_rule__timeouts *)

type azurerm_mssql_outbound_firewall_rule = {
  name : string;  (** name *)
  server_id : string;  (** server_id *)
  timeouts : azurerm_mssql_outbound_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_outbound_firewall_rule *)

let azurerm_mssql_outbound_firewall_rule ?timeouts ~name ~server_id
    __resource_id =
  let __resource_type = "azurerm_mssql_outbound_firewall_rule" in
  let __resource = { name; server_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_outbound_firewall_rule __resource);
  ()