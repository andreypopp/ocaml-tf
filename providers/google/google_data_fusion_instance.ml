(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accelerators = {
  accelerator_type : string prop;
      (** The type of an accelator for a CDF instance. Possible values: [CDC, HEALTHCARE, CCAI_INSIGHTS] *)
  state : string prop;
      (** The type of an accelator for a CDF instance. Possible values: [ENABLED, DISABLED] *)
}
[@@deriving yojson_of]
(** List of accelerators enabled for this CDF instance.

If accelerators are enabled it is possible a permadiff will be created with the Options field.
Users will need to either manually update their state file to include these diffed options, or include the field in a [lifecycle ignore changes block](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle#ignore_changes). *)

type crypto_key_config = {
  key_reference : string prop;
      (** The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*. *)
}
[@@deriving yojson_of]
(** The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. *)

type event_publish_config = {
  enabled : bool prop;  (** Option to enable Event Publishing. *)
  topic : string prop;
      (** The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id} *)
}
[@@deriving yojson_of]
(** Option to enable and pass metadata for event publishing. *)

type network_config = {
  ip_allocation : string prop;
      (** The IP range in CIDR notation to use for the managed Data Fusion instance
nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. *)
  network : string prop;
      (** Name of the network in the project with which the tenant project
will be peered for executing pipelines. In case of shared VPC where the network resides in another host
project the network should specified in the form of projects/{host-project-id}/global/networks/{network} *)
}
[@@deriving yojson_of]
(** Network configuration options. These are required when a private Data Fusion instance is to be created. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_data_fusion_instance = {
  dataproc_service_account : string prop option; [@option]
      (** User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. *)
  description : string prop option; [@option]
      (** An optional description of the instance. *)
  display_name : string prop option; [@option]
      (** Display name for an instance. *)
  enable_rbac : bool prop option; [@option]
      (** Option to enable granular role-based access control. *)
  enable_stackdriver_logging : bool prop option; [@option]
      (** Option to enable Stackdriver Logging. *)
  enable_stackdriver_monitoring : bool prop option; [@option]
      (** Option to enable Stackdriver Monitoring. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The resource labels for instance to use to annotate any related underlying resources,
such as Compute Engine VMs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  options : (string * string prop) list option; [@option]
      (** Map of additional options used to configure the behavior of Data Fusion instance. *)
  private_instance : bool prop option; [@option]
      (** Specifies whether the Data Fusion instance should be private. If set to
true, all Data Fusion nodes will have private IP addresses and will not be
able to access the public internet. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the Data Fusion instance. *)
  type_ : string prop; [@key "type"]
      (** Represents the type of Data Fusion instance. Each type is configured with
the default settings for processing and memory.
- BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines
using point and click UI. However, there are certain limitations, such as fewer number
of concurrent pipelines, no support for streaming pipelines, etc.
- ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features
available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
- DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but
with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration
pipelines at low cost. Possible values: [BASIC, ENTERPRISE, DEVELOPER] *)
  version : string prop option; [@option]
      (** Current version of the Data Fusion. *)
  zone : string prop option; [@option]
      (** Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field. *)
  accelerators : accelerators list;
  crypto_key_config : crypto_key_config list;
  event_publish_config : event_publish_config list;
  network_config : network_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_fusion_instance *)

let accelerators ~accelerator_type ~state () : accelerators =
  { accelerator_type; state }

let crypto_key_config ~key_reference () : crypto_key_config =
  { key_reference }

let event_publish_config ~enabled ~topic () : event_publish_config =
  { enabled; topic }

let network_config ~ip_allocation ~network () : network_config =
  { ip_allocation; network }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_fusion_instance ?dataproc_service_account
    ?description ?display_name ?enable_rbac
    ?enable_stackdriver_logging ?enable_stackdriver_monitoring ?id
    ?labels ?options ?private_instance ?project ?region ?version
    ?zone ?timeouts ~name ~type_ ~accelerators ~crypto_key_config
    ~event_publish_config ~network_config () :
    google_data_fusion_instance =
  {
    dataproc_service_account;
    description;
    display_name;
    enable_rbac;
    enable_stackdriver_logging;
    enable_stackdriver_monitoring;
    id;
    labels;
    name;
    options;
    private_instance;
    project;
    region;
    type_;
    version;
    zone;
    accelerators;
    crypto_key_config;
    event_publish_config;
    network_config;
    timeouts;
  }

type t = {
  api_endpoint : string prop;
  create_time : string prop;
  dataproc_service_account : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  enable_rbac : bool prop;
  enable_stackdriver_logging : bool prop;
  enable_stackdriver_monitoring : bool prop;
  gcs_bucket : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  options : (string * string) list prop;
  p4_service_account : string prop;
  private_instance : bool prop;
  project : string prop;
  region : string prop;
  service_endpoint : string prop;
  state : string prop;
  state_message : string prop;
  tenant_project_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
  version : string prop;
  zone : string prop;
}

let make ?dataproc_service_account ?description ?display_name
    ?enable_rbac ?enable_stackdriver_logging
    ?enable_stackdriver_monitoring ?id ?labels ?options
    ?private_instance ?project ?region ?version ?zone ?timeouts ~name
    ~type_ ~accelerators ~crypto_key_config ~event_publish_config
    ~network_config __id =
  let __type = "google_data_fusion_instance" in
  let __attrs =
    ({
       api_endpoint = Prop.computed __type __id "api_endpoint";
       create_time = Prop.computed __type __id "create_time";
       dataproc_service_account =
         Prop.computed __type __id "dataproc_service_account";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_rbac = Prop.computed __type __id "enable_rbac";
       enable_stackdriver_logging =
         Prop.computed __type __id "enable_stackdriver_logging";
       enable_stackdriver_monitoring =
         Prop.computed __type __id "enable_stackdriver_monitoring";
       gcs_bucket = Prop.computed __type __id "gcs_bucket";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       options = Prop.computed __type __id "options";
       p4_service_account =
         Prop.computed __type __id "p4_service_account";
       private_instance =
         Prop.computed __type __id "private_instance";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       service_endpoint =
         Prop.computed __type __id "service_endpoint";
       state = Prop.computed __type __id "state";
       state_message = Prop.computed __type __id "state_message";
       tenant_project_id =
         Prop.computed __type __id "tenant_project_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_fusion_instance
        (google_data_fusion_instance ?dataproc_service_account
           ?description ?display_name ?enable_rbac
           ?enable_stackdriver_logging ?enable_stackdriver_monitoring
           ?id ?labels ?options ?private_instance ?project ?region
           ?version ?zone ?timeouts ~name ~type_ ~accelerators
           ~crypto_key_config ~event_publish_config ~network_config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?dataproc_service_account ?description
    ?display_name ?enable_rbac ?enable_stackdriver_logging
    ?enable_stackdriver_monitoring ?id ?labels ?options
    ?private_instance ?project ?region ?version ?zone ?timeouts ~name
    ~type_ ~accelerators ~crypto_key_config ~event_publish_config
    ~network_config __id =
  let (r : _ Tf_core.resource) =
    make ?dataproc_service_account ?description ?display_name
      ?enable_rbac ?enable_stackdriver_logging
      ?enable_stackdriver_monitoring ?id ?labels ?options
      ?private_instance ?project ?region ?version ?zone ?timeouts
      ~name ~type_ ~accelerators ~crypto_key_config
      ~event_publish_config ~network_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
