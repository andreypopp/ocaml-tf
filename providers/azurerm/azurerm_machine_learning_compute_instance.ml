(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assign_to_user = {
  object_id : string prop option; [@option]
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assign_to_user) -> ()

let yojson_of_assign_to_user =
  (function
   | { object_id = v_object_id; tenant_id = v_tenant_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : assign_to_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assign_to_user

[@@@deriving.end]

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

type ssh = { public_key : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : ssh) -> ()

let yojson_of_ssh =
  (function
   | { public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
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

type azurerm_machine_learning_compute_instance = {
  authorization_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  local_auth_enabled : bool prop option; [@option]
  location : string prop option; [@option]
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop option; [@option]
  subnet_resource_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  virtual_machine_size : string prop;
  assign_to_user : assign_to_user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh : ssh list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_machine_learning_compute_instance) -> ()

let yojson_of_azurerm_machine_learning_compute_instance =
  (function
   | {
       authorization_type = v_authorization_type;
       description = v_description;
       id = v_id;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       machine_learning_workspace_id =
         v_machine_learning_workspace_id;
       name = v_name;
       node_public_ip_enabled = v_node_public_ip_enabled;
       subnet_resource_id = v_subnet_resource_id;
       tags = v_tags;
       virtual_machine_size = v_virtual_machine_size;
       assign_to_user = v_assign_to_user;
       identity = v_identity;
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
         if Stdlib.( = ) [] v_ssh then bnds
         else
           let arg = (yojson_of_list yojson_of_ssh) v_ssh in
           let bnd = "ssh", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_assign_to_user then bnds
         else
           let arg =
             (yojson_of_list yojson_of_assign_to_user)
               v_assign_to_user
           in
           let bnd = "assign_to_user", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_size
         in
         ("virtual_machine_size", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
       let bnds =
         match v_authorization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_compute_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_compute_instance

[@@@deriving.end]

let assign_to_user ?object_id ?tenant_id () : assign_to_user =
  { object_id; tenant_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ssh ~public_key () : ssh = { public_key }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_compute_instance ?authorization_type
    ?description ?id ?local_auth_enabled ?location
    ?node_public_ip_enabled ?subnet_resource_id ?tags
    ?(assign_to_user = []) ?(identity = []) ?(ssh = []) ?timeouts
    ~machine_learning_workspace_id ~name ~virtual_machine_size () :
    azurerm_machine_learning_compute_instance =
  {
    authorization_type;
    description;
    id;
    local_auth_enabled;
    location;
    machine_learning_workspace_id;
    name;
    node_public_ip_enabled;
    subnet_resource_id;
    tags;
    virtual_machine_size;
    assign_to_user;
    identity;
    ssh;
    timeouts;
  }

type t = {
  tf_name : string;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : string Tf_core.assoc prop;
  virtual_machine_size : string prop;
}

let make ?authorization_type ?description ?id ?local_auth_enabled
    ?location ?node_public_ip_enabled ?subnet_resource_id ?tags
    ?(assign_to_user = []) ?(identity = []) ?(ssh = []) ?timeouts
    ~machine_learning_workspace_id ~name ~virtual_machine_size __id =
  let __type = "azurerm_machine_learning_compute_instance" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_type =
         Prop.computed __type __id "authorization_type";
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
       subnet_resource_id =
         Prop.computed __type __id "subnet_resource_id";
       tags = Prop.computed __type __id "tags";
       virtual_machine_size =
         Prop.computed __type __id "virtual_machine_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_compute_instance
        (azurerm_machine_learning_compute_instance
           ?authorization_type ?description ?id ?local_auth_enabled
           ?location ?node_public_ip_enabled ?subnet_resource_id
           ?tags ~assign_to_user ~identity ~ssh ?timeouts
           ~machine_learning_workspace_id ~name ~virtual_machine_size
           ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_type ?description ?id
    ?local_auth_enabled ?location ?node_public_ip_enabled
    ?subnet_resource_id ?tags ?(assign_to_user = []) ?(identity = [])
    ?(ssh = []) ?timeouts ~machine_learning_workspace_id ~name
    ~virtual_machine_size __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_type ?description ?id ?local_auth_enabled
      ?location ?node_public_ip_enabled ?subnet_resource_id ?tags
      ~assign_to_user ~identity ~ssh ?timeouts
      ~machine_learning_workspace_id ~name ~virtual_machine_size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
