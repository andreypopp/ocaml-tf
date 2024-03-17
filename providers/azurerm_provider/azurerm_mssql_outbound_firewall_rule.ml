(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_outbound_firewall_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mssql_outbound_firewall_rule__timeouts *)

type azurerm_mssql_outbound_firewall_rule = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  timeouts : azurerm_mssql_outbound_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_outbound_firewall_rule *)

let azurerm_mssql_outbound_firewall_rule ?id ?timeouts ~name
    ~server_id __resource_id =
  let __resource_type = "azurerm_mssql_outbound_firewall_rule" in
  let __resource = { id; name; server_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_outbound_firewall_rule __resource);
  ()
