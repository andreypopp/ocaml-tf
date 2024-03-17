(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mariadb_firewall_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_firewall_rule__timeouts *)

type azurerm_mariadb_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  start_ip_address : string prop;  (** start_ip_address *)
  timeouts : azurerm_mariadb_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_firewall_rule *)

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  start_ip_address : string prop;
}

let azurerm_mariadb_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~resource_group_name ~server_name ~start_ip_address __resource_id
    =
  let __resource_type = "azurerm_mariadb_firewall_rule" in
  let __resource =
    ({
       end_ip_address;
       id;
       name;
       resource_group_name;
       server_name;
       start_ip_address;
       timeouts;
     }
      : azurerm_mariadb_firewall_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_firewall_rule __resource);
  let __resource_attributes =
    ({
       end_ip_address =
         Prop.computed __resource_type __resource_id "end_ip_address";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       start_ip_address =
         Prop.computed __resource_type __resource_id
           "start_ip_address";
     }
      : t)
  in
  __resource_attributes
