(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_cosmosdb_cassandra_cluster = {
  authentication_method : string prop option; [@option]
  client_certificate_pems : string prop list option; [@option]
  default_admin_password : string prop;
  delegated_management_subnet_id : string prop;
  external_gossip_certificate_pems : string prop list option;
      [@option]
  external_seed_node_ip_addresses : string prop list option;
      [@option]
  hours_between_backups : float prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  repair_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  version : string prop option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_cassandra_cluster) -> ()

let yojson_of_azurerm_cosmosdb_cassandra_cluster =
  (function
   | {
       authentication_method = v_authentication_method;
       client_certificate_pems = v_client_certificate_pems;
       default_admin_password = v_default_admin_password;
       delegated_management_subnet_id =
         v_delegated_management_subnet_id;
       external_gossip_certificate_pems =
         v_external_gossip_certificate_pems;
       external_seed_node_ip_addresses =
         v_external_seed_node_ip_addresses;
       hours_between_backups = v_hours_between_backups;
       id = v_id;
       location = v_location;
       name = v_name;
       repair_enabled = v_repair_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       version = v_version;
       identity = v_identity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_repair_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "repair_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours_between_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours_between_backups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_seed_node_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_seed_node_ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_gossip_certificate_pems with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_gossip_certificate_pems", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_delegated_management_subnet_id
         in
         ("delegated_management_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_admin_password
         in
         ("default_admin_password", arg) :: bnds
       in
       let bnds =
         match v_client_certificate_pems with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_certificate_pems", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_cassandra_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_cassandra_cluster

[@@@deriving.end]

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_cassandra_cluster ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?(identity = []) ?timeouts
    ~default_admin_password ~delegated_management_subnet_id ~location
    ~name ~resource_group_name () :
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
  tf_name : string;
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
    ?repair_enabled ?tags ?version ?(identity = []) ?timeouts
    ~default_admin_password ~delegated_management_subnet_id ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_cosmosdb_cassandra_cluster" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?id ?repair_enabled ?tags ?version ~identity ?timeouts
           ~default_admin_password ~delegated_management_subnet_id
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_method
    ?client_certificate_pems ?external_gossip_certificate_pems
    ?external_seed_node_ip_addresses ?hours_between_backups ?id
    ?repair_enabled ?tags ?version ?(identity = []) ?timeouts
    ~default_admin_password ~delegated_management_subnet_id ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_method ?client_certificate_pems
      ?external_gossip_certificate_pems
      ?external_seed_node_ip_addresses ?hours_between_backups ?id
      ?repair_enabled ?tags ?version ~identity ?timeouts
      ~default_admin_password ~delegated_management_subnet_id
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
