(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type scale_settings = {
  max_node_count : float prop;
  min_node_count : float prop;
  scale_down_nodes_after_idle_duration : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scale_settings) -> ()

let yojson_of_scale_settings =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
       scale_down_nodes_after_idle_duration =
         v_scale_down_nodes_after_idle_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_scale_down_nodes_after_idle_duration
         in
         ("scale_down_nodes_after_idle_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       `Assoc bnds
    : scale_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scale_settings

[@@@deriving.end]

type ssh = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  key_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssh) -> ()

let yojson_of_ssh =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       key_value = v_key_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       let bnds =
         match v_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssh -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssh

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

type azurerm_machine_learning_compute_cluster = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop option; [@option]
  ssh_public_access_enabled : bool prop option; [@option]
  subnet_resource_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vm_priority : string prop;
  vm_size : string prop;
  identity : identity list;
  scale_settings : scale_settings list;
  ssh : ssh list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_machine_learning_compute_cluster) -> ()

let yojson_of_azurerm_machine_learning_compute_cluster =
  (function
   | {
       description = v_description;
       id = v_id;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       machine_learning_workspace_id =
         v_machine_learning_workspace_id;
       name = v_name;
       node_public_ip_enabled = v_node_public_ip_enabled;
       ssh_public_access_enabled = v_ssh_public_access_enabled;
       subnet_resource_id = v_subnet_resource_id;
       tags = v_tags;
       vm_priority = v_vm_priority;
       vm_size = v_vm_size;
       identity = v_identity;
       scale_settings = v_scale_settings;
       ssh = v_ssh;
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
         let arg = yojson_of_list yojson_of_ssh v_ssh in
         ("ssh", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scale_settings v_scale_settings
         in
         ("scale_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_priority in
         ("vm_priority", arg) :: bnds
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
         match v_subnet_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_public_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssh_public_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_public_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "node_public_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_machine_learning_workspace_id
         in
         ("machine_learning_workspace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_compute_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_compute_cluster

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let scale_settings ~max_node_count ~min_node_count
    ~scale_down_nodes_after_idle_duration () : scale_settings =
  {
    max_node_count;
    min_node_count;
    scale_down_nodes_after_idle_duration;
  }

let ssh ?admin_password ?key_value ~admin_username () : ssh =
  { admin_password; admin_username; key_value }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_compute_cluster ?description ?id
    ?local_auth_enabled ?node_public_ip_enabled
    ?ssh_public_access_enabled ?subnet_resource_id ?tags
    ?(identity = []) ?(ssh = []) ?timeouts ~location
    ~machine_learning_workspace_id ~name ~vm_priority ~vm_size
    ~scale_settings () : azurerm_machine_learning_compute_cluster =
  {
    description;
    id;
    local_auth_enabled;
    location;
    machine_learning_workspace_id;
    name;
    node_public_ip_enabled;
    ssh_public_access_enabled;
    subnet_resource_id;
    tags;
    vm_priority;
    vm_size;
    identity;
    scale_settings;
    ssh;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  ssh_public_access_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : (string * string) list prop;
  vm_priority : string prop;
  vm_size : string prop;
}

let make ?description ?id ?local_auth_enabled ?node_public_ip_enabled
    ?ssh_public_access_enabled ?subnet_resource_id ?tags
    ?(identity = []) ?(ssh = []) ?timeouts ~location
    ~machine_learning_workspace_id ~name ~vm_priority ~vm_size
    ~scale_settings __id =
  let __type = "azurerm_machine_learning_compute_cluster" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       machine_learning_workspace_id =
         Prop.computed __type __id "machine_learning_workspace_id";
       name = Prop.computed __type __id "name";
       node_public_ip_enabled =
         Prop.computed __type __id "node_public_ip_enabled";
       ssh_public_access_enabled =
         Prop.computed __type __id "ssh_public_access_enabled";
       subnet_resource_id =
         Prop.computed __type __id "subnet_resource_id";
       tags = Prop.computed __type __id "tags";
       vm_priority = Prop.computed __type __id "vm_priority";
       vm_size = Prop.computed __type __id "vm_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_compute_cluster
        (azurerm_machine_learning_compute_cluster ?description ?id
           ?local_auth_enabled ?node_public_ip_enabled
           ?ssh_public_access_enabled ?subnet_resource_id ?tags
           ~identity ~ssh ?timeouts ~location
           ~machine_learning_workspace_id ~name ~vm_priority ~vm_size
           ~scale_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?local_auth_enabled
    ?node_public_ip_enabled ?ssh_public_access_enabled
    ?subnet_resource_id ?tags ?(identity = []) ?(ssh = []) ?timeouts
    ~location ~machine_learning_workspace_id ~name ~vm_priority
    ~vm_size ~scale_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?local_auth_enabled ?node_public_ip_enabled
      ?ssh_public_access_enabled ?subnet_resource_id ?tags ~identity
      ~ssh ?timeouts ~location ~machine_learning_workspace_id ~name
      ~vm_priority ~vm_size ~scale_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
