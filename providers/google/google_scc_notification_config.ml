(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type streaming_config = {
  filter : string prop;
      (** Expression that defines the filter to apply across create/update
events of assets or findings as specified by the event type. The
expression is a list of zero or more restrictions combined via
logical operators AND and OR. Parentheses are supported, and OR
has higher precedence than AND.

Restrictions have the form <field> <operator> <value> and may have
a - character in front of them to indicate negation. The fields
map to those defined in the corresponding resource.

The supported operators are:

* = for all value types.
* >, <, >=, <= for integer values.
* :, meaning substring matching, for strings.

The supported value types are:

* string literals in quotes.
* integer literals without quotes.
* boolean literals true and false without quotes.

See
[Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
for information on how to write a filter. *)
}
[@@deriving yojson_of]
(** The config for triggering streaming-based notifications. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_scc_notification_config = {
  config_id : string prop;
      (** This must be unique within the organization. *)
  description : string prop option; [@option]
      (** The description of the notification config (max of 1024 characters). *)
  id : string prop option; [@option]  (** id *)
  organization : string prop;
      (** The organization whose Cloud Security Command Center the Notification
Config lives in. *)
  pubsub_topic : string prop;
      (** The Pub/Sub topic to send notifications to. Its format is
projects/[project_id]/topics/[topic]. *)
  streaming_config : streaming_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_scc_notification_config *)

let streaming_config ~filter () : streaming_config = { filter }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_notification_config ?description ?id ?timeouts
    ~config_id ~organization ~pubsub_topic ~streaming_config () :
    google_scc_notification_config =
  {
    config_id;
    description;
    id;
    organization;
    pubsub_topic;
    streaming_config;
    timeouts;
  }

type t = {
  config_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
  pubsub_topic : string prop;
  service_account : string prop;
}

let make ?description ?id ?timeouts ~config_id ~organization
    ~pubsub_topic ~streaming_config __id =
  let __type = "google_scc_notification_config" in
  let __attrs =
    ({
       config_id = Prop.computed __type __id "config_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       pubsub_topic = Prop.computed __type __id "pubsub_topic";
       service_account = Prop.computed __type __id "service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_notification_config
        (google_scc_notification_config ?description ?id ?timeouts
           ~config_id ~organization ~pubsub_topic ~streaming_config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~config_id
    ~organization ~pubsub_topic ~streaming_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~config_id ~organization
      ~pubsub_topic ~streaming_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
