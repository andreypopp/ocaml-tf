(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_cluster *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_cassandra_cluster ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?timeouts ~default_admin_password
    ~delegated_management_subnet_id ~location ~name
    ~resource_group_name ~identity () :
    azurerm_cosmosdb_cassandra_cluster =
  {
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

let make ?authentication_method ?client_certificate_pems
    ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?timeouts ~default_admin_password
    ~delegated_management_subnet_id ~location ~name
    ~resource_group_name ~identity __id =
  let __type = "azurerm_cosmosdb_cassandra_cluster" in
  let __attrs =
    ({
       authentication_method =
         Prop.computed __type __id "authentication_method";
       client_certificate_pems =
         Prop.computed __type __id "client_certificate_pems";
       default_admin_password =
         Prop.computed __type __id "default_admin_password";
       delegated_management_subnet_id =
         Prop.computed __type __id "delegated_management_subnet_id";
       external_gossip_certificate_pems =
         Prop.computed __type __id "external_gossip_certificate_pems";
       external_seed_node_ip_addresses =
         Prop.computed __type __id "external_seed_node_ip_addresses";
       hours_between_backups =
         Prop.computed __type __id "hours_between_backups";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       repair_enabled = Prop.computed __type __id "repair_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_cassandra_cluster
        (azurerm_cosmosdb_cassandra_cluster ?authentication_method
           ?client_certificate_pems ?external_gossip_certificate_pems
           ?external_seed_node_ip_addresses ?hours_between_backups
           ?id ?repair_enabled ?tags ?version ?timeouts
           ~default_admin_password ~delegated_management_subnet_id
           ~location ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?timeouts ~default_admin_password
    ~delegated_management_subnet_id ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_method ?client_certificate_pems
      ?external_gossip_certificate_pems
      ?external_seed_node_ip_addresses ?hours_between_backups ?id
      ?repair_enabled ?tags ?version ?timeouts
      ~default_admin_password ~delegated_management_subnet_id
      ~location ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
