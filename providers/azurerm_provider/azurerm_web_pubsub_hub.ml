(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub_hub__event_handler__auth = {
  managed_identity_id : string prop;  (** managed_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub__event_handler__auth *)

type azurerm_web_pubsub_hub__event_handler = {
  system_events : string prop list option; [@option]
      (** system_events *)
  url_template : string prop;  (** url_template *)
  user_event_pattern : string prop option; [@option]
      (** user_event_pattern *)
  auth : azurerm_web_pubsub_hub__event_handler__auth list;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub__event_handler *)

type azurerm_web_pubsub_hub__event_listener = {
  eventhub_name : string prop;  (** eventhub_name *)
  eventhub_namespace_name : string prop;
      (** eventhub_namespace_name *)
  system_event_name_filter : string prop list option; [@option]
      (** system_event_name_filter *)
  user_event_name_filter : string prop list option; [@option]
      (** user_event_name_filter *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub__event_listener *)

type azurerm_web_pubsub_hub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub__timeouts *)

type azurerm_web_pubsub_hub = {
  anonymous_connections_enabled : bool prop option; [@option]
      (** anonymous_connections_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  web_pubsub_id : string prop;  (** web_pubsub_id *)
  event_handler : azurerm_web_pubsub_hub__event_handler list;
  event_listener : azurerm_web_pubsub_hub__event_listener list;
  timeouts : azurerm_web_pubsub_hub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_hub *)

type t = {
  anonymous_connections_enabled : bool prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

let azurerm_web_pubsub_hub ?anonymous_connections_enabled ?id
    ?timeouts ~name ~web_pubsub_id ~event_handler ~event_listener
    __resource_id =
  let __resource_type = "azurerm_web_pubsub_hub" in
  let __resource =
    ({
       anonymous_connections_enabled;
       id;
       name;
       web_pubsub_id;
       event_handler;
       event_listener;
       timeouts;
     }
      : azurerm_web_pubsub_hub)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_hub __resource);
  let __resource_attributes =
    ({
       anonymous_connections_enabled =
         Prop.computed __resource_type __resource_id
           "anonymous_connections_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       web_pubsub_id =
         Prop.computed __resource_type __resource_id "web_pubsub_id";
     }
      : t)
  in
  __resource_attributes
