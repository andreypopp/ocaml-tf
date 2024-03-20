(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : read_write_endpoint_failover_policy) -> ()

let yojson_of_read_write_endpoint_failover_policy =
  (function
   | { grace_minutes = v_grace_minutes; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_grace_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "grace_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : read_write_endpoint_failover_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_read_write_endpoint_failover_policy

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

type partner_region = { location : string prop; role : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : partner_region) -> ()

let yojson_of_partner_region =
  (function
   | { location = v_location; role = v_role } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : partner_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partner_region

[@@@deriving.end]

type azurerm_sql_managed_instance_failover_group = {
  id : string prop option; [@option]
  location : string prop;
  managed_instance_name : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  readonly_endpoint_failover_policy_enabled : bool prop option;
      [@option]
  resource_group_name : string prop;
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_managed_instance_failover_group) -> ()

let yojson_of_azurerm_sql_managed_instance_failover_group =
  (function
   | {
       id = v_id;
       location = v_location;
       managed_instance_name = v_managed_instance_name;
       name = v_name;
       partner_managed_instance_id = v_partner_managed_instance_id;
       readonly_endpoint_failover_policy_enabled =
         v_readonly_endpoint_failover_policy_enabled;
       resource_group_name = v_resource_group_name;
       read_write_endpoint_failover_policy =
         v_read_write_endpoint_failover_policy;
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
         let arg =
           yojson_of_list
             yojson_of_read_write_endpoint_failover_policy
             v_read_write_endpoint_failover_policy
         in
         ("read_write_endpoint_failover_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_readonly_endpoint_failover_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "readonly_endpoint_failover_policy_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_partner_managed_instance_id
         in
         ("partner_managed_instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_instance_name
         in
         ("managed_instance_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_sql_managed_instance_failover_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_managed_instance_failover_group

[@@@deriving.end]

let read_write_endpoint_failover_policy ?grace_minutes ~mode () :
    read_write_endpoint_failover_policy =
  { grace_minutes; mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_managed_instance_failover_group ?id
    ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
    ~managed_instance_name ~name ~partner_managed_instance_id
    ~resource_group_name ~read_write_endpoint_failover_policy () :
    azurerm_sql_managed_instance_failover_group =
  {
    id;
    location;
    managed_instance_name;
    name;
    partner_managed_instance_id;
    readonly_endpoint_failover_policy_enabled;
    resource_group_name;
    read_write_endpoint_failover_policy;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  managed_instance_name : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  partner_region : partner_region list prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  resource_group_name : string prop;
  role : string prop;
}

let make ?id ?readonly_endpoint_failover_policy_enabled ?timeouts
    ~location ~managed_instance_name ~name
    ~partner_managed_instance_id ~resource_group_name
    ~read_write_endpoint_failover_policy __id =
  let __type = "azurerm_sql_managed_instance_failover_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_instance_name =
         Prop.computed __type __id "managed_instance_name";
       name = Prop.computed __type __id "name";
       partner_managed_instance_id =
         Prop.computed __type __id "partner_managed_instance_id";
       partner_region = Prop.computed __type __id "partner_region";
       readonly_endpoint_failover_policy_enabled =
         Prop.computed __type __id
           "readonly_endpoint_failover_policy_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_managed_instance_failover_group
        (azurerm_sql_managed_instance_failover_group ?id
           ?readonly_endpoint_failover_policy_enabled ?timeouts
           ~location ~managed_instance_name ~name
           ~partner_managed_instance_id ~resource_group_name
           ~read_write_endpoint_failover_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id
    ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
    ~managed_instance_name ~name ~partner_managed_instance_id
    ~resource_group_name ~read_write_endpoint_failover_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?readonly_endpoint_failover_policy_enabled ?timeouts
      ~location ~managed_instance_name ~name
      ~partner_managed_instance_id ~resource_group_name
      ~read_write_endpoint_failover_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
