(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = {
  kms_key_name : string prop;
      (** Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'. The key needs to be in the same region as where the compute resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type deployed_models__private_endpoints = {
  explain_http_uri : string prop;  (** explain_http_uri *)
  health_http_uri : string prop;  (** health_http_uri *)
  predict_http_uri : string prop;  (** predict_http_uri *)
  service_attachment : string prop;  (** service_attachment *)
}
[@@deriving yojson_of]

type deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float prop;  (** accelerator_count *)
  accelerator_type : string prop;  (** accelerator_type *)
  machine_type : string prop;  (** machine_type *)
}
[@@deriving yojson_of]

type deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string prop;  (** metric_name *)
  target : float prop;  (** target *)
}
[@@deriving yojson_of]

type deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      (** autoscaling_metric_specs *)
  machine_spec :
    deployed_models__dedicated_resources__machine_spec list;
      (** machine_spec *)
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}
[@@deriving yojson_of]

type deployed_models__automatic_resources = {
  max_replica_count : float prop;  (** max_replica_count *)
  min_replica_count : float prop;  (** min_replica_count *)
}
[@@deriving yojson_of]

type deployed_models = {
  automatic_resources : deployed_models__automatic_resources list;
      (** automatic_resources *)
  create_time : string prop;  (** create_time *)
  dedicated_resources : deployed_models__dedicated_resources list;
      (** dedicated_resources *)
  display_name : string prop;  (** display_name *)
  enable_access_logging : bool prop;  (** enable_access_logging *)
  enable_container_logging : bool prop;
      (** enable_container_logging *)
  id : string prop;  (** id *)
  model : string prop;  (** model *)
  model_version_id : string prop;  (** model_version_id *)
  private_endpoints : deployed_models__private_endpoints list;
      (** private_endpoints *)
  service_account : string prop;  (** service_account *)
  shared_resources : string prop;  (** shared_resources *)
}
[@@deriving yojson_of]

type google_vertex_ai_endpoint = {
  description : string prop option; [@option]
      (** The description of the Endpoint. *)
  display_name : string prop;
      (** Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits. *)
  network : string prop option; [@option]
      (** The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): 'projects/{project}/global/networks/{network}'. Where '{project}' is a project number, as in '12345', and '{network}' is network name. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region for the resource *)
  encryption_spec : encryption_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_endpoint *)

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_endpoint ?description ?id ?labels ?network
    ?project ?region ?timeouts ~display_name ~location ~name
    ~encryption_spec () : google_vertex_ai_endpoint =
  {
    description;
    display_name;
    id;
    labels;
    location;
    name;
    network;
    project;
    region;
    encryption_spec;
    timeouts;
  }

type t = {
  create_time : string prop;
  deployed_models : deployed_models list prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  model_deployment_monitoring_job : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?network ?project ?region ?timeouts
    ~display_name ~location ~name ~encryption_spec __id =
  let __type = "google_vertex_ai_endpoint" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       deployed_models = Prop.computed __type __id "deployed_models";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       model_deployment_monitoring_job =
         Prop.computed __type __id "model_deployment_monitoring_job";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_endpoint
        (google_vertex_ai_endpoint ?description ?id ?labels ?network
           ?project ?region ?timeouts ~display_name ~location ~name
           ~encryption_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?network ?project
    ?region ?timeouts ~display_name ~location ~name ~encryption_spec
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?network ?project ?region ?timeouts
      ~display_name ~location ~name ~encryption_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
