(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server_firewall_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_firewall_rule__timeouts *)

type azurerm_postgresql_flexible_server_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  start_ip_address : string prop;  (** start_ip_address *)
  timeouts :
    azurerm_postgresql_flexible_server_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_firewall_rule *)

let azurerm_postgresql_flexible_server_firewall_rule ?id ?timeouts
    ~end_ip_address ~name ~server_id ~start_ip_address __resource_id
    =
  let __resource_type =
    "azurerm_postgresql_flexible_server_firewall_rule"
  in
  let __resource =
    {
      end_ip_address;
      id;
      name;
      server_id;
      start_ip_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_firewall_rule
       __resource);
  ()
