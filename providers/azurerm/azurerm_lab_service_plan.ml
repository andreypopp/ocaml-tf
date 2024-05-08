(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_auto_shutdown = {
  disconnect_delay : string prop option; [@option]
  idle_delay : string prop option; [@option]
  no_connect_delay : string prop option; [@option]
  shutdown_on_idle : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_auto_shutdown) -> ()

let yojson_of_default_auto_shutdown =
  (function
   | {
       disconnect_delay = v_disconnect_delay;
       idle_delay = v_idle_delay;
       no_connect_delay = v_no_connect_delay;
       shutdown_on_idle = v_shutdown_on_idle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_shutdown_on_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shutdown_on_idle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_connect_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "no_connect_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idle_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disconnect_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disconnect_delay", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_auto_shutdown -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_auto_shutdown

[@@@deriving.end]

type default_connection = {
  client_rdp_access : string prop option; [@option]
  client_ssh_access : string prop option; [@option]
  web_rdp_access : string prop option; [@option]
  web_ssh_access : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_connection) -> ()

let yojson_of_default_connection =
  (function
   | {
       client_rdp_access = v_client_rdp_access;
       client_ssh_access = v_client_ssh_access;
       web_rdp_access = v_web_rdp_access;
       web_ssh_access = v_web_ssh_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_ssh_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_ssh_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_web_rdp_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_rdp_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ssh_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_ssh_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_rdp_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_rdp_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_connection

[@@@deriving.end]

type support = {
  email : string prop option; [@option]
  instructions : string prop option; [@option]
  phone : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : support) -> ()

let yojson_of_support =
  (function
   | {
       email = v_email;
       instructions = v_instructions;
       phone = v_phone;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instructions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instructions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : support -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_support

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

type azurerm_lab_service_plan = {
  allowed_regions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_network_subnet_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  default_auto_shutdown : default_auto_shutdown list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_connection : default_connection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  support : support list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lab_service_plan) -> ()

let yojson_of_azurerm_lab_service_plan =
  (function
   | {
       allowed_regions = v_allowed_regions;
       default_network_subnet_id = v_default_network_subnet_id;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       shared_gallery_id = v_shared_gallery_id;
       tags = v_tags;
       default_auto_shutdown = v_default_auto_shutdown;
       default_connection = v_default_connection;
       support = v_support;
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
         if Stdlib.( = ) [] v_support then bnds
         else
           let arg = (yojson_of_list yojson_of_support) v_support in
           let bnd = "support", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_connection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_connection)
               v_default_connection
           in
           let bnd = "default_connection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_auto_shutdown then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_auto_shutdown)
               v_default_auto_shutdown
           in
           let bnd = "default_auto_shutdown", arg in
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
         match v_shared_gallery_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_gallery_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_default_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_network_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_regions
           in
           let bnd = "allowed_regions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lab_service_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lab_service_plan

[@@@deriving.end]

let default_auto_shutdown ?disconnect_delay ?idle_delay
    ?no_connect_delay ?shutdown_on_idle () : default_auto_shutdown =
  {
    disconnect_delay;
    idle_delay;
    no_connect_delay;
    shutdown_on_idle;
  }

let default_connection ?client_rdp_access ?client_ssh_access
    ?web_rdp_access ?web_ssh_access () : default_connection =
  {
    client_rdp_access;
    client_ssh_access;
    web_rdp_access;
    web_ssh_access;
  }

let support ?email ?instructions ?phone ?url () : support =
  { email; instructions; phone; url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_plan ?default_network_subnet_id ?id
    ?shared_gallery_id ?tags ?(default_auto_shutdown = [])
    ?(default_connection = []) ?(support = []) ?timeouts
    ~allowed_regions ~location ~name ~resource_group_name () :
    azurerm_lab_service_plan =
  {
    allowed_regions;
    default_network_subnet_id;
    id;
    location;
    name;
    resource_group_name;
    shared_gallery_id;
    tags;
    default_auto_shutdown;
    default_connection;
    support;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_regions : string list prop;
  default_network_subnet_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop;
  tags : (string * string) list prop;
}

let make ?default_network_subnet_id ?id ?shared_gallery_id ?tags
    ?(default_auto_shutdown = []) ?(default_connection = [])
    ?(support = []) ?timeouts ~allowed_regions ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_lab_service_plan" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_regions = Prop.computed __type __id "allowed_regions";
       default_network_subnet_id =
         Prop.computed __type __id "default_network_subnet_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shared_gallery_id =
         Prop.computed __type __id "shared_gallery_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_plan
        (azurerm_lab_service_plan ?default_network_subnet_id ?id
           ?shared_gallery_id ?tags ~default_auto_shutdown
           ~default_connection ~support ?timeouts ~allowed_regions
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_network_subnet_id ?id
    ?shared_gallery_id ?tags ?(default_auto_shutdown = [])
    ?(default_connection = []) ?(support = []) ?timeouts
    ~allowed_regions ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?default_network_subnet_id ?id ?shared_gallery_id ?tags
      ~default_auto_shutdown ~default_connection ~support ?timeouts
      ~allowed_regions ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
