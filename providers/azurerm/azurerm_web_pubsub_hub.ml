(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_handler__auth = {
  managed_identity_id : string prop;  (** managed_identity_id *)
}
[@@deriving yojson_of]
(** event_handler__auth *)

type event_handler = {
  system_events : string prop list option; [@option]
      (** system_events *)
  url_template : string prop;  (** url_template *)
  user_event_pattern : string prop option; [@option]
      (** user_event_pattern *)
  auth : event_handler__auth list;
}
[@@deriving yojson_of]
(** event_handler *)

type event_listener = {
  eventhub_name : string prop;  (** eventhub_name *)
  eventhub_namespace_name : string prop;
      (** eventhub_namespace_name *)
  system_event_name_filter : string prop list option; [@option]
      (** system_event_name_filter *)
  user_event_name_filter : string prop list option; [@option]
      (** user_event_name_filter *)
}
[@@deriving yojson_of]
(** event_listener *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_web_pubsub_hub = {
  anonymous_connections_enabled : bool prop option; [@option]
      (** anonymous_connections_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  web_pubsub_id : string prop;  (** web_pubsub_id *)
  event_handler : event_handler list;
  event_listener : event_listener list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub *)

let event_handler__auth ~managed_identity_id () : event_handler__auth
    =
  { managed_identity_id }

let event_handler ?system_events ?user_event_pattern ~url_template
    ~auth () : event_handler =
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
    ?timeouts ~name ~web_pubsub_id ~event_handler ~event_listener ()
    : azurerm_web_pubsub_hub =
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
  anonymous_connections_enabled : bool prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

let make ?anonymous_connections_enabled ?id ?timeouts ~name
    ~web_pubsub_id ~event_handler ~event_listener __id =
  let __type = "azurerm_web_pubsub_hub" in
  let __attrs =
    ({
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
           ?timeouts ~name ~web_pubsub_id ~event_handler
           ~event_listener ());
    attrs = __attrs;
  }

let register ?tf_module ?anonymous_connections_enabled ?id ?timeouts
    ~name ~web_pubsub_id ~event_handler ~event_listener __id =
  let (r : _ Tf_core.resource) =
    make ?anonymous_connections_enabled ?id ?timeouts ~name
      ~web_pubsub_id ~event_handler ~event_listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
