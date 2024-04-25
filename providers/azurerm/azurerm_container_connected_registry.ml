(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification = {
  action : string prop;
  digest : string prop option; [@option]
  name : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | {
       action = v_action;
       digest = v_digest;
       name = v_name;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification

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

type azurerm_container_connected_registry = {
  audit_log_enabled : bool prop option; [@option]
  client_token_ids : string prop list option; [@option]
  container_registry_id : string prop;
  id : string prop option; [@option]
  log_level : string prop option; [@option]
  mode : string prop option; [@option]
  name : string prop;
  parent_registry_id : string prop option; [@option]
  sync_message_ttl : string prop option; [@option]
  sync_schedule : string prop option; [@option]
  sync_token_id : string prop;
  sync_window : string prop option; [@option]
  notification : notification list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_connected_registry) -> ()

let yojson_of_azurerm_container_connected_registry =
  (function
   | {
       audit_log_enabled = v_audit_log_enabled;
       client_token_ids = v_client_token_ids;
       container_registry_id = v_container_registry_id;
       id = v_id;
       log_level = v_log_level;
       mode = v_mode;
       name = v_name;
       parent_registry_id = v_parent_registry_id;
       sync_message_ttl = v_sync_message_ttl;
       sync_schedule = v_sync_schedule;
       sync_token_id = v_sync_token_id;
       sync_window = v_sync_window;
       notification = v_notification;
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
           yojson_of_list yojson_of_notification v_notification
         in
         ("notification", arg) :: bnds
       in
       let bnds =
         match v_sync_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sync_token_id in
         ("sync_token_id", arg) :: bnds
       in
       let bnds =
         match v_sync_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_message_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_message_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_registry_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_registry_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_container_registry_id
         in
         ("container_registry_id", arg) :: bnds
       in
       let bnds =
         match v_client_token_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_token_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "audit_log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_connected_registry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_connected_registry

[@@@deriving.end]

let notification ?digest ?tag ~action ~name () : notification =
  { action; digest; name; tag }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_connected_registry ?audit_log_enabled
    ?client_token_ids ?id ?log_level ?mode ?parent_registry_id
    ?sync_message_ttl ?sync_schedule ?sync_window
    ?(notification = []) ?timeouts ~container_registry_id ~name
    ~sync_token_id () : azurerm_container_connected_registry =
  {
    audit_log_enabled;
    client_token_ids;
    container_registry_id;
    id;
    log_level;
    mode;
    name;
    parent_registry_id;
    sync_message_ttl;
    sync_schedule;
    sync_token_id;
    sync_window;
    notification;
    timeouts;
  }

type t = {
  audit_log_enabled : bool prop;
  client_token_ids : string list prop;
  container_registry_id : string prop;
  id : string prop;
  log_level : string prop;
  mode : string prop;
  name : string prop;
  parent_registry_id : string prop;
  sync_message_ttl : string prop;
  sync_schedule : string prop;
  sync_token_id : string prop;
  sync_window : string prop;
}

let make ?audit_log_enabled ?client_token_ids ?id ?log_level ?mode
    ?parent_registry_id ?sync_message_ttl ?sync_schedule ?sync_window
    ?(notification = []) ?timeouts ~container_registry_id ~name
    ~sync_token_id __id =
  let __type = "azurerm_container_connected_registry" in
  let __attrs =
    ({
       audit_log_enabled =
         Prop.computed __type __id "audit_log_enabled";
       client_token_ids =
         Prop.computed __type __id "client_token_ids";
       container_registry_id =
         Prop.computed __type __id "container_registry_id";
       id = Prop.computed __type __id "id";
       log_level = Prop.computed __type __id "log_level";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       parent_registry_id =
         Prop.computed __type __id "parent_registry_id";
       sync_message_ttl =
         Prop.computed __type __id "sync_message_ttl";
       sync_schedule = Prop.computed __type __id "sync_schedule";
       sync_token_id = Prop.computed __type __id "sync_token_id";
       sync_window = Prop.computed __type __id "sync_window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_connected_registry
        (azurerm_container_connected_registry ?audit_log_enabled
           ?client_token_ids ?id ?log_level ?mode ?parent_registry_id
           ?sync_message_ttl ?sync_schedule ?sync_window
           ~notification ?timeouts ~container_registry_id ~name
           ~sync_token_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_log_enabled ?client_token_ids ?id
    ?log_level ?mode ?parent_registry_id ?sync_message_ttl
    ?sync_schedule ?sync_window ?(notification = []) ?timeouts
    ~container_registry_id ~name ~sync_token_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_log_enabled ?client_token_ids ?id ?log_level ?mode
      ?parent_registry_id ?sync_message_ttl ?sync_schedule
      ?sync_window ~notification ?timeouts ~container_registry_id
      ~name ~sync_token_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
