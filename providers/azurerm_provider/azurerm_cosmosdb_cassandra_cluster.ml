(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cosmosdb_cassandra_cluster__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster__identity *)

type azurerm_cosmosdb_cassandra_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster__timeouts *)

type azurerm_cosmosdb_cassandra_cluster = {
  authentication_method : string option; [@option]
      (** authentication_method *)
  client_certificate_pems : string list option; [@option]
      (** client_certificate_pems *)
  default_admin_password : string;  (** default_admin_password *)
  delegated_management_subnet_id : string;
      (** delegated_management_subnet_id *)
  external_gossip_certificate_pems : string list option; [@option]
      (** external_gossip_certificate_pems *)
  external_seed_node_ip_addresses : string list option; [@option]
      (** external_seed_node_ip_addresses *)
  hours_between_backups : float option; [@option]
      (** hours_between_backups *)
  location : string;  (** location *)
  name : string;  (** name *)
  repair_enabled : bool option; [@option]  (** repair_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string option; [@option]  (** version *)
  identity : azurerm_cosmosdb_cassandra_cluster__identity list;
  timeouts : azurerm_cosmosdb_cassandra_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster *)

let azurerm_cosmosdb_cassandra_cluster ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups
    ?repair_enabled ?tags ?version ?timeouts ~default_admin_password
    ~delegated_management_subnet_id ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_cosmosdb_cassandra_cluster" in
  let __resource =
    {
      authentication_method;
      client_certificate_pems;
      default_admin_password;
      delegated_management_subnet_id;
      external_gossip_certificate_pems;
      external_seed_node_ip_addresses;
      hours_between_backups;
      location;
      name;
      repair_enabled;
      resource_group_name;
      tags;
      version;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_cassandra_cluster __resource);
  ()
