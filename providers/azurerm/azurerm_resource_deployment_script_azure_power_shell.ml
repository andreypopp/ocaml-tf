(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container = {
  container_group_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container) -> ()

let yojson_of_container =
  (function
   | { container_group_name = v_container_group_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_container_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_group_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container

[@@@deriving.end]

type environment_variable = {
  name : string prop;
  secure_value : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment_variable) -> ()

let yojson_of_environment_variable =
  (function
   | {
       name = v_name;
       secure_value = v_secure_value;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secure_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : environment_variable -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment_variable

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type storage_account = { key : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

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

type azurerm_resource_deployment_script_azure_power_shell = {
  cleanup_preference : string prop option; [@option]
  command_line : string prop option; [@option]
  force_update_tag : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  primary_script_uri : string prop option; [@option]
  resource_group_name : string prop;
  retention_interval : string prop;
  script_content : string prop option; [@option]
  supporting_script_uris : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  timeout : string prop option; [@option]
  version : string prop;
  container : container list;
      [@default []] [@yojson_drop_default ( = )]
  environment_variable : environment_variable list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_resource_deployment_script_azure_power_shell) -> ()

let yojson_of_azurerm_resource_deployment_script_azure_power_shell =
  (function
   | {
       cleanup_preference = v_cleanup_preference;
       command_line = v_command_line;
       force_update_tag = v_force_update_tag;
       id = v_id;
       location = v_location;
       name = v_name;
       primary_script_uri = v_primary_script_uri;
       resource_group_name = v_resource_group_name;
       retention_interval = v_retention_interval;
       script_content = v_script_content;
       supporting_script_uris = v_supporting_script_uris;
       tags = v_tags;
       timeout = v_timeout;
       version = v_version;
       container = v_container;
       environment_variable = v_environment_variable;
       identity = v_identity;
       storage_account = v_storage_account;
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
         if [] = v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_environment_variable then bnds
         else
           let arg =
             (yojson_of_list yojson_of_environment_variable)
               v_environment_variable
           in
           let bnd = "environment_variable", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container) v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
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
         match v_supporting_script_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supporting_script_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_script_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_retention_interval
         in
         ("retention_interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_primary_script_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_script_uri", arg in
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
         match v_force_update_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_update_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "command_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cleanup_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cleanup_preference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_resource_deployment_script_azure_power_shell ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_resource_deployment_script_azure_power_shell

[@@@deriving.end]

let container ?container_group_name () : container =
  { container_group_name }

let environment_variable ?secure_value ?value ~name () :
    environment_variable =
  { name; secure_value; value }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let storage_account ~key ~name () : storage_account = { key; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_deployment_script_azure_power_shell
    ?cleanup_preference ?command_line ?force_update_tag ?id
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?(container = []) ?(identity = [])
    ?(storage_account = []) ?timeouts ~location ~name
    ~resource_group_name ~retention_interval ~version
    ~environment_variable () :
    azurerm_resource_deployment_script_azure_power_shell =
  {
    cleanup_preference;
    command_line;
    force_update_tag;
    id;
    location;
    name;
    primary_script_uri;
    resource_group_name;
    retention_interval;
    script_content;
    supporting_script_uris;
    tags;
    timeout;
    version;
    container;
    environment_variable;
    identity;
    storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  cleanup_preference : string prop;
  command_line : string prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outputs : string prop;
  primary_script_uri : string prop;
  resource_group_name : string prop;
  retention_interval : string prop;
  script_content : string prop;
  supporting_script_uris : string list prop;
  tags : (string * string) list prop;
  timeout : string prop;
  version : string prop;
}

let make ?cleanup_preference ?command_line ?force_update_tag ?id
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?(container = []) ?(identity = [])
    ?(storage_account = []) ?timeouts ~location ~name
    ~resource_group_name ~retention_interval ~version
    ~environment_variable __id =
  let __type =
    "azurerm_resource_deployment_script_azure_power_shell"
  in
  let __attrs =
    ({
       tf_name = __id;
       cleanup_preference =
         Prop.computed __type __id "cleanup_preference";
       command_line = Prop.computed __type __id "command_line";
       force_update_tag =
         Prop.computed __type __id "force_update_tag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       primary_script_uri =
         Prop.computed __type __id "primary_script_uri";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_interval =
         Prop.computed __type __id "retention_interval";
       script_content = Prop.computed __type __id "script_content";
       supporting_script_uris =
         Prop.computed __type __id "supporting_script_uris";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_deployment_script_azure_power_shell
        (azurerm_resource_deployment_script_azure_power_shell
           ?cleanup_preference ?command_line ?force_update_tag ?id
           ?primary_script_uri ?script_content
           ?supporting_script_uris ?tags ?timeout ~container
           ~identity ~storage_account ?timeouts ~location ~name
           ~resource_group_name ~retention_interval ~version
           ~environment_variable ());
    attrs = __attrs;
  }

let register ?tf_module ?cleanup_preference ?command_line
    ?force_update_tag ?id ?primary_script_uri ?script_content
    ?supporting_script_uris ?tags ?timeout ?(container = [])
    ?(identity = []) ?(storage_account = []) ?timeouts ~location
    ~name ~resource_group_name ~retention_interval ~version
    ~environment_variable __id =
  let (r : _ Tf_core.resource) =
    make ?cleanup_preference ?command_line ?force_update_tag ?id
      ?primary_script_uri ?script_content ?supporting_script_uris
      ?tags ?timeout ~container ~identity ~storage_account ?timeouts
      ~location ~name ~resource_group_name ~retention_interval
      ~version ~environment_variable __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
