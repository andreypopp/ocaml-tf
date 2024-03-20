(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pubsub_configs = {
  message_format : string prop;
      (** The format of the Cloud Pub/Sub messages.
- PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
- JSON: The message payload is a JSON string of SourceRepoEvent. Possible values: [PROTOBUF, JSON] *)
  service_account_email : string prop option; [@option]
      (** Email address of the service account used for publishing Cloud Pub/Sub messages.
This service account needs to be in the same project as the PubsubConfig. When added,
the caller needs to have iam.serviceAccounts.actAs permission on this service account.
If unspecified, it defaults to the compute engine default service account. *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** How this repository publishes a change in the repository through Cloud Pub/Sub.
Keyed by the topic names. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_sourcerepo_repository = {
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Resource name of the repository, of the form '{{repo}}'.
The repo name may contain slashes. eg, 'name/with/slash' *)
  project : string prop option; [@option]  (** project *)
  pubsub_configs : pubsub_configs list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_sourcerepo_repository *)

let pubsub_configs ?service_account_email ~message_format ~topic () :
    pubsub_configs =
  { message_format; service_account_email; topic }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_sourcerepo_repository ?id ?project ?timeouts ~name
    ~pubsub_configs () : google_sourcerepo_repository =
  { id; name; project; pubsub_configs; timeouts }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  url : string prop;
}

let make ?id ?project ?timeouts ~name ~pubsub_configs __id =
  let __type = "google_sourcerepo_repository" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       size = Prop.computed __type __id "size";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sourcerepo_repository
        (google_sourcerepo_repository ?id ?project ?timeouts ~name
           ~pubsub_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~name ~pubsub_configs
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~name ~pubsub_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
