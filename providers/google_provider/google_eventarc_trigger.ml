(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_eventarc_trigger__destination__cloud_run_service = {
  path : string option; [@option]
      (** Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: /route, route, route/subroute. *)
  region : string option; [@option]
      (** Required. The region the Cloud Run service is deployed in. *)
  service : string;
      (** Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed. *)
}
[@@deriving yojson_of]
(** Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger. *)

type google_eventarc_trigger__destination__gke = {
  cluster : string;
      (** Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created. *)
  location : string;
      (** Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters. *)
  namespace : string;
      (** Required. The namespace the GKE service is running in. *)
  path : string option; [@option]
      (** Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: /route, route, route/subroute. *)
  service : string;  (** Required. Name of the GKE service. *)
}
[@@deriving yojson_of]
(** A GKE service capable of receiving events. The service should be running in the same project as the trigger. *)

type google_eventarc_trigger__destination__http_endpoint = {
  uri : string;
      (** Required. The URI of the HTTP enpdoint. The value must be a RFC2396 URI string. Examples: `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`. Only HTTP and HTTPS protocols are supported. The host can be either a static IP addressable from the VPC specified by the network config, or an internal DNS hostname of the service resolvable via Cloud DNS. *)
}
[@@deriving yojson_of]
(** An HTTP endpoint destination described by an URI. *)

type google_eventarc_trigger__destination__network_config = {
  network_attachment : string;
      (** Required. Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}` *)
}
[@@deriving yojson_of]
(** Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type. *)

type google_eventarc_trigger__destination = {
  cloud_function : string;
      (** The Cloud Function resource name. Only Cloud Functions V2 is supported. Format projects/{project}/locations/{location}/functions/{function} This is a read-only field. [WARNING] Creating Cloud Functions V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value. *)
  workflow : string option; [@option]
      (** The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}` *)
  cloud_run_service :
    google_eventarc_trigger__destination__cloud_run_service list;
  gke : google_eventarc_trigger__destination__gke list;
  http_endpoint :
    google_eventarc_trigger__destination__http_endpoint list;
  network_config :
    google_eventarc_trigger__destination__network_config list;
}
[@@deriving yojson_of]
(** Required. Destination specifies where the events should be sent to. *)

type google_eventarc_trigger__matching_criteria = {
  attribute : string;
      (** Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the 'type' attribute. *)
  operator : string option; [@option]
      (** Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`. *)
  value : string;
      (** Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values. *)
}
[@@deriving yojson_of]
(** Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination. *)

type google_eventarc_trigger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_eventarc_trigger__timeouts *)

type google_eventarc_trigger__transport__pubsub = {
  subscription : string;
      (** Output only. The name of the Pub/Sub subscription created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`. *)
  topic : string option; [@option]
      (** Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an existing topic for triggers of the type google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion. *)
}
[@@deriving yojson_of]
(** The Pub/Sub topic and subscription used by Eventarc as delivery intermediary. *)

type google_eventarc_trigger__transport = {
  pubsub : google_eventarc_trigger__transport__pubsub list;
}
[@@deriving yojson_of]
(** Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes. *)

type google_eventarc_trigger = {
  channel : string option; [@option]
      (** Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners. *)
  labels : (string * string) list option; [@option]
      (** Optional. User labels attached to the triggers that can be used to group resources.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Required. The resource name of the trigger. Must be unique within the location on the project. *)
  service_account : string option; [@option]
      (** Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role. *)
  destination : google_eventarc_trigger__destination list;
  matching_criteria :
    google_eventarc_trigger__matching_criteria list;
  timeouts : google_eventarc_trigger__timeouts option;
  transport : google_eventarc_trigger__transport list;
}
[@@deriving yojson_of]
(** google_eventarc_trigger *)

let google_eventarc_trigger ?channel ?labels ?service_account
    ?timeouts ~location ~name ~destination ~matching_criteria
    ~transport __resource_id =
  let __resource_type = "google_eventarc_trigger" in
  let __resource =
    {
      channel;
      labels;
      location;
      name;
      service_account;
      destination;
      matching_criteria;
      timeouts;
      transport;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_trigger __resource);
  ()
