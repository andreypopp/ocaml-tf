(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mysql_flexible_server_firewall_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_firewall_rule__timeouts *)

type azurerm_mysql_flexible_server_firewall_rule = {
  end_ip_address : string;  (** end_ip_address *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  start_ip_address : string;  (** start_ip_address *)
  timeouts :
    azurerm_mysql_flexible_server_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_firewall_rule *)

let azurerm_mysql_flexible_server_firewall_rule ?timeouts
    ~end_ip_address ~name ~resource_group_name ~server_name
    ~start_ip_address __resource_id =
  let __resource_type =
    "azurerm_mysql_flexible_server_firewall_rule"
  in
  let __resource =
    {
      end_ip_address;
      name;
      resource_group_name;
      server_name;
      start_ip_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server_firewall_rule __resource);
  ()
