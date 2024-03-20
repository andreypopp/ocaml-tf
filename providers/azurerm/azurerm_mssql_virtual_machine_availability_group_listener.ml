(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_balancer_configuration = {
  load_balancer_id : string prop;
  private_ip_address : string prop;
  probe_port : float prop;
  sql_virtual_machine_ids : string prop list;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_configuration) -> ()

let yojson_of_load_balancer_configuration =
  (function
   | {
       load_balancer_id = v_load_balancer_id;
       private_ip_address = v_private_ip_address;
       probe_port = v_probe_port;
       sql_virtual_machine_ids = v_sql_virtual_machine_ids;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_sql_virtual_machine_ids
         in
         ("sql_virtual_machine_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_probe_port in
         ("probe_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_id
         in
         ("load_balancer_id", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_configuration

[@@@deriving.end]

type multi_subnet_ip_configuration = {
  private_ip_address : string prop;
  sql_virtual_machine_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_subnet_ip_configuration) -> ()

let yojson_of_multi_subnet_ip_configuration =
  (function
   | {
       private_ip_address = v_private_ip_address;
       sql_virtual_machine_id = v_sql_virtual_machine_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sql_virtual_machine_id
         in
         ("sql_virtual_machine_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : multi_subnet_ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_subnet_ip_configuration

[@@@deriving.end]

type replica = {
  commit : string prop;
  failover_mode : string prop;
  readable_secondary : string prop;
  role : string prop;
  sql_virtual_machine_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | {
       commit = v_commit;
       failover_mode = v_failover_mode;
       readable_secondary = v_readable_secondary;
       role = v_role;
       sql_virtual_machine_id = v_sql_virtual_machine_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sql_virtual_machine_id
         in
         ("sql_virtual_machine_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_readable_secondary
         in
         ("readable_secondary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_failover_mode in
         ("failover_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_commit in
         ("commit", arg) :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_mssql_virtual_machine_availability_group_listener = {
  availability_group_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  port : float prop option; [@option]
  sql_virtual_machine_group_id : string prop;
  load_balancer_configuration : load_balancer_configuration list;
  multi_subnet_ip_configuration : multi_subnet_ip_configuration list;
  replica : replica list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_mssql_virtual_machine_availability_group_listener) ->
  ()

let yojson_of_azurerm_mssql_virtual_machine_availability_group_listener
    =
  (function
   | {
       availability_group_name = v_availability_group_name;
       id = v_id;
       name = v_name;
       port = v_port;
       sql_virtual_machine_group_id = v_sql_virtual_machine_group_id;
       load_balancer_configuration = v_load_balancer_configuration;
       multi_subnet_ip_configuration =
         v_multi_subnet_ip_configuration;
       replica = v_replica;
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
         let arg = yojson_of_list yojson_of_replica v_replica in
         ("replica", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_multi_subnet_ip_configuration
             v_multi_subnet_ip_configuration
         in
         ("multi_subnet_ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancer_configuration
             v_load_balancer_configuration
         in
         ("load_balancer_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_sql_virtual_machine_group_id
         in
         ("sql_virtual_machine_group_id", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_availability_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_group_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_virtual_machine_availability_group_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_mssql_virtual_machine_availability_group_listener

[@@@deriving.end]

let load_balancer_configuration ~load_balancer_id ~private_ip_address
    ~probe_port ~sql_virtual_machine_ids ~subnet_id () :
    load_balancer_configuration =
  {
    load_balancer_id;
    private_ip_address;
    probe_port;
    sql_virtual_machine_ids;
    subnet_id;
  }

let multi_subnet_ip_configuration ~private_ip_address
    ~sql_virtual_machine_id ~subnet_id () :
    multi_subnet_ip_configuration =
  { private_ip_address; sql_virtual_machine_id; subnet_id }

let replica ~commit ~failover_mode ~readable_secondary ~role
    ~sql_virtual_machine_id () : replica =
  {
    commit;
    failover_mode;
    readable_secondary;
    role;
    sql_virtual_machine_id;
  }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_mssql_virtual_machine_availability_group_listener
    ?availability_group_name ?id ?port ?timeouts ~name
    ~sql_virtual_machine_group_id ~load_balancer_configuration
    ~multi_subnet_ip_configuration ~replica () :
    azurerm_mssql_virtual_machine_availability_group_listener =
  {
    availability_group_name;
    id;
    name;
    port;
    sql_virtual_machine_group_id;
    load_balancer_configuration;
    multi_subnet_ip_configuration;
    replica;
    timeouts;
  }

type t = {
  availability_group_name : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  sql_virtual_machine_group_id : string prop;
}

let make ?availability_group_name ?id ?port ?timeouts ~name
    ~sql_virtual_machine_group_id ~load_balancer_configuration
    ~multi_subnet_ip_configuration ~replica __id =
  let __type =
    "azurerm_mssql_virtual_machine_availability_group_listener"
  in
  let __attrs =
    ({
       availability_group_name =
         Prop.computed __type __id "availability_group_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       sql_virtual_machine_group_id =
         Prop.computed __type __id "sql_virtual_machine_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_virtual_machine_availability_group_listener
        (azurerm_mssql_virtual_machine_availability_group_listener
           ?availability_group_name ?id ?port ?timeouts ~name
           ~sql_virtual_machine_group_id ~load_balancer_configuration
           ~multi_subnet_ip_configuration ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_group_name ?id ?port ?timeouts
    ~name ~sql_virtual_machine_group_id ~load_balancer_configuration
    ~multi_subnet_ip_configuration ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?availability_group_name ?id ?port ?timeouts ~name
      ~sql_virtual_machine_group_id ~load_balancer_configuration
      ~multi_subnet_ip_configuration ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
