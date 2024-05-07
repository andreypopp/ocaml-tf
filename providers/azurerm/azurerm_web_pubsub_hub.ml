(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_handler__auth = { managed_identity_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_handler__auth) -> ()

let yojson_of_event_handler__auth =
  (function
   | { managed_identity_id = v_managed_identity_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_identity_id
         in
         ("managed_identity_id", arg) :: bnds
       in
       `Assoc bnds
    : event_handler__auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handler__auth

[@@@deriving.end]

type event_handler = {
  system_events : string prop list option; [@option]
  url_template : string prop;
  user_event_pattern : string prop option; [@option]
  auth : event_handler__auth list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_handler) -> ()

let yojson_of_event_handler =
  (function
   | {
       system_events = v_system_events;
       url_template = v_url_template;
       user_event_pattern = v_user_event_pattern;
       auth = v_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_handler__auth v_auth
         in
         ("auth", arg) :: bnds
       in
       let bnds =
         match v_user_event_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_event_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_template in
         ("url_template", arg) :: bnds
       in
       let bnds =
         match v_system_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "system_events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_handler -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_handler

[@@@deriving.end]

type event_listener = {
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  system_event_name_filter : string prop list option; [@option]
  user_event_name_filter : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_listener) -> ()

let yojson_of_event_listener =
  (function
   | {
       eventhub_name = v_eventhub_name;
       eventhub_namespace_name = v_eventhub_namespace_name;
       system_event_name_filter = v_system_event_name_filter;
       user_event_name_filter = v_user_event_name_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_event_name_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_event_name_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_system_event_name_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "system_event_name_filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_eventhub_namespace_name
         in
         ("eventhub_namespace_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_eventhub_name in
         ("eventhub_name", arg) :: bnds
       in
       `Assoc bnds
    : event_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_listener

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

type azurerm_web_pubsub_hub = {
  anonymous_connections_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  web_pubsub_id : string prop;
  event_handler : event_handler list;
  event_listener : event_listener list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_web_pubsub_hub) -> ()

let yojson_of_azurerm_web_pubsub_hub =
  (function
   | {
       anonymous_connections_enabled =
         v_anonymous_connections_enabled;
       id = v_id;
       name = v_name;
       web_pubsub_id = v_web_pubsub_id;
       event_handler = v_event_handler;
       event_listener = v_event_listener;
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
           yojson_of_list yojson_of_event_listener v_event_listener
         in
         ("event_listener", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_handler v_event_handler
         in
         ("event_handler", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_web_pubsub_id in
         ("web_pubsub_id", arg) :: bnds
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
         match v_anonymous_connections_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "anonymous_connections_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_web_pubsub_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_web_pubsub_hub

[@@@deriving.end]

let event_handler__auth ~managed_identity_id () : event_handler__auth
    =
  { managed_identity_id }

let event_handler ?system_events ?user_event_pattern ?(auth = [])
    ~url_template () : event_handler =
  { system_events; url_template; user_event_pattern; auth }

let event_listener ?system_event_name_filter ?user_event_name_filter
    ~eventhub_name ~eventhub_namespace_name () : event_listener =
  {
    eventhub_name;
    eventhub_namespace_name;
    system_event_name_filter;
    user_event_name_filter;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_web_pubsub_hub ?anonymous_connections_enabled ?id
    ?(event_handler = []) ?(event_listener = []) ?timeouts ~name
    ~web_pubsub_id () : azurerm_web_pubsub_hub =
  {
    anonymous_connections_enabled;
    id;
    name;
    web_pubsub_id;
    event_handler;
    event_listener;
    timeouts;
  }

type t = {
  tf_name : string;
  anonymous_connections_enabled : bool prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

let make ?anonymous_connections_enabled ?id ?(event_handler = [])
    ?(event_listener = []) ?timeouts ~name ~web_pubsub_id __id =
  let __type = "azurerm_web_pubsub_hub" in
  let __attrs =
    ({
       tf_name = __id;
       anonymous_connections_enabled =
         Prop.computed __type __id "anonymous_connections_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       web_pubsub_id = Prop.computed __type __id "web_pubsub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_web_pubsub_hub
        (azurerm_web_pubsub_hub ?anonymous_connections_enabled ?id
           ~event_handler ~event_listener ?timeouts ~name
           ~web_pubsub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?anonymous_connections_enabled ?id
    ?(event_handler = []) ?(event_listener = []) ?timeouts ~name
    ~web_pubsub_id __id =
  let (r : _ Tf_core.resource) =
    make ?anonymous_connections_enabled ?id ~event_handler
      ~event_listener ?timeouts ~name ~web_pubsub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
