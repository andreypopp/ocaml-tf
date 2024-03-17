(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sourcerepo_repository__pubsub_configs = {
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

type google_sourcerepo_repository__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_sourcerepo_repository__timeouts *)

type google_sourcerepo_repository = {
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Resource name of the repository, of the form '{{repo}}'.
The repo name may contain slashes. eg, 'name/with/slash' *)
  project : string prop option; [@option]  (** project *)
  pubsub_configs : google_sourcerepo_repository__pubsub_configs list;
  timeouts : google_sourcerepo_repository__timeouts option;
}
[@@deriving yojson_of]
(** google_sourcerepo_repository *)

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  url : string prop;
}

let google_sourcerepo_repository ?id ?project ?timeouts ~name
    ~pubsub_configs __resource_id =
  let __resource_type = "google_sourcerepo_repository" in
  let __resource =
    ({ id; name; project; pubsub_configs; timeouts }
      : google_sourcerepo_repository)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sourcerepo_repository __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       size = Prop.computed __resource_type __resource_id "size";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
