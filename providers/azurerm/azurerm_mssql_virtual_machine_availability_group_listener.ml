(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_balancer_configuration = {
  load_balancer_id : string prop;  (** load_balancer_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  probe_port : float prop;  (** probe_port *)
  sql_virtual_machine_ids : string prop list;
      (** sql_virtual_machine_ids *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** load_balancer_configuration *)

type multi_subnet_ip_configuration = {
  private_ip_address : string prop;  (** private_ip_address *)
  sql_virtual_machine_id : string prop;
      (** sql_virtual_machine_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** multi_subnet_ip_configuration *)

type replica = {
  commit : string prop;  (** commit *)
  failover_mode : string prop;  (** failover_mode *)
  readable_secondary : string prop;  (** readable_secondary *)
  role : string prop;  (** role *)
  sql_virtual_machine_id : string prop;  (** sql_virtual_machine_id *)
}
[@@deriving yojson_of]
(** replica *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_virtual_machine_availability_group_listener = {
  availability_group_name : string prop option; [@option]
      (** availability_group_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  port : float prop option; [@option]  (** port *)
  sql_virtual_machine_group_id : string prop;
      (** sql_virtual_machine_group_id *)
  load_balancer_configuration : load_balancer_configuration list;
  multi_subnet_ip_configuration : multi_subnet_ip_configuration list;
  replica : replica list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine_availability_group_listener *)

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
