(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_cluster__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster__identity *)

type azurerm_cosmosdb_cassandra_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster__timeouts *)

type azurerm_cosmosdb_cassandra_cluster = {
  authentication_method : string prop option; [@option]
      (** authentication_method *)
  client_certificate_pems : string prop list option; [@option]
      (** client_certificate_pems *)
  default_admin_password : string prop;
      (** default_admin_password *)
  delegated_management_subnet_id : string prop;
      (** delegated_management_subnet_id *)
  external_gossip_certificate_pems : string prop list option;
      [@option]
      (** external_gossip_certificate_pems *)
  external_seed_node_ip_addresses : string prop list option;
      [@option]
      (** external_seed_node_ip_addresses *)
  hours_between_backups : float prop option; [@option]
      (** hours_between_backups *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  repair_enabled : bool prop option; [@option]  (** repair_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop option; [@option]  (** version *)
  identity : azurerm_cosmosdb_cassandra_cluster__identity list;
  timeouts : azurerm_cosmosdb_cassandra_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster *)

type t = {
  authentication_method : string prop;
  client_certificate_pems : string list prop;
  default_admin_password : string prop;
  delegated_management_subnet_id : string prop;
  external_gossip_certificate_pems : string list prop;
  external_seed_node_ip_addresses : string list prop;
  hours_between_backups : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  repair_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let azurerm_cosmosdb_cassandra_cluster ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?timeouts ~default_admin_password
    ~delegated_management_subnet_id ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_cosmosdb_cassandra_cluster" in
  let __resource =
    ({
       authentication_method;
       client_certificate_pems;
       default_admin_password;
       delegated_management_subnet_id;
       external_gossip_certificate_pems;
       external_seed_node_ip_addresses;
       hours_between_backups;
       id;
       location;
       name;
       repair_enabled;
       resource_group_name;
       tags;
       version;
       identity;
       timeouts;
     }
      : azurerm_cosmosdb_cassandra_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_cassandra_cluster __resource);
  let __resource_attributes =
    ({
       authentication_method =
         Prop.computed __resource_type __resource_id
           "authentication_method";
       client_certificate_pems =
         Prop.computed __resource_type __resource_id
           "client_certificate_pems";
       default_admin_password =
         Prop.computed __resource_type __resource_id
           "default_admin_password";
       delegated_management_subnet_id =
         Prop.computed __resource_type __resource_id
           "delegated_management_subnet_id";
       external_gossip_certificate_pems =
         Prop.computed __resource_type __resource_id
           "external_gossip_certificate_pems";
       external_seed_node_ip_addresses =
         Prop.computed __resource_type __resource_id
           "external_seed_node_ip_addresses";
       hours_between_backups =
         Prop.computed __resource_type __resource_id
           "hours_between_backups";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       repair_enabled =
         Prop.computed __resource_type __resource_id "repair_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
