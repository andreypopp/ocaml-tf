(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vertex_ai_endpoint__encryption_spec = {
  kms_key_name : string;
      (** Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'. The key needs to be in the same region as where the compute resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key. *)

type google_vertex_ai_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_endpoint__timeouts *)

type google_vertex_ai_endpoint__deployed_models__private_endpoints = {
  explain_http_uri : string;  (** explain_http_uri *)
  health_http_uri : string;  (** health_http_uri *)
  predict_http_uri : string;  (** predict_http_uri *)
  service_attachment : string;  (** service_attachment *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float;  (** accelerator_count *)
  accelerator_type : string;  (** accelerator_type *)
  machine_type : string;  (** machine_type *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string;  (** metric_name *)
  target : float;  (** target *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      (** autoscaling_metric_specs *)
  machine_spec :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources__machine_spec
    list;
      (** machine_spec *)
  max_replica_count : float;  (** max_replica_count *)
  min_replica_count : float;  (** min_replica_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models__automatic_resources = {
  max_replica_count : float;  (** max_replica_count *)
  min_replica_count : float;  (** min_replica_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint__deployed_models = {
  automatic_resources :
    google_vertex_ai_endpoint__deployed_models__automatic_resources
    list;
      (** automatic_resources *)
  create_time : string;  (** create_time *)
  dedicated_resources :
    google_vertex_ai_endpoint__deployed_models__dedicated_resources
    list;
      (** dedicated_resources *)
  display_name : string;  (** display_name *)
  enable_access_logging : bool;  (** enable_access_logging *)
  enable_container_logging : bool;  (** enable_container_logging *)
  id : string;  (** id *)
  model : string;  (** model *)
  model_version_id : string;  (** model_version_id *)
  private_endpoints :
    google_vertex_ai_endpoint__deployed_models__private_endpoints
    list;
      (** private_endpoints *)
  service_account : string;  (** service_account *)
  shared_resources : string;  (** shared_resources *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint = {
  description : string option; [@option]
      (** The description of the Endpoint. *)
  display_name : string;
      (** Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits. *)
  network : string option; [@option]
      (** The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): 'projects/{project}/global/networks/{network}'. Where '{project}' is a project number, as in '12345', and '{network}' is network name. *)
  region : string option; [@option]
      (** The region for the resource *)
  encryption_spec : google_vertex_ai_endpoint__encryption_spec list;
  timeouts : google_vertex_ai_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_endpoint *)

let google_vertex_ai_endpoint ?description ?labels ?network ?region
    ?timeouts ~display_name ~location ~name ~encryption_spec
    __resource_id =
  let __resource_type = "google_vertex_ai_endpoint" in
  let __resource =
    {
      description;
      display_name;
      labels;
      location;
      name;
      network;
      region;
      encryption_spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_endpoint __resource);
  ()
