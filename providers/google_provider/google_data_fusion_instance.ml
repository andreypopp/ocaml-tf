(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_data_fusion_instance__accelerators = {
  accelerator_type : string;
      (** The type of an accelator for a CDF instance. Possible values: [CDC, HEALTHCARE, CCAI_INSIGHTS] *)
  state : string;
      (** The type of an accelator for a CDF instance. Possible values: [ENABLED, DISABLED] *)
}
[@@deriving yojson_of]
(** List of accelerators enabled for this CDF instance.

If accelerators are enabled it is possible a permadiff will be created with the Options field.
Users will need to either manually update their state file to include these diffed options, or include the field in a [lifecycle ignore changes block](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle#ignore_changes). *)

type google_data_fusion_instance__crypto_key_config = {
  key_reference : string;
      (** The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*. *)
}
[@@deriving yojson_of]
(** The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature. *)

type google_data_fusion_instance__event_publish_config = {
  enabled : bool;  (** Option to enable Event Publishing. *)
  topic : string;
      (** The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id} *)
}
[@@deriving yojson_of]
(** Option to enable and pass metadata for event publishing. *)

type google_data_fusion_instance__network_config = {
  ip_allocation : string;
      (** The IP range in CIDR notation to use for the managed Data Fusion instance
nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. *)
  network : string;
      (** Name of the network in the project with which the tenant project
will be peered for executing pipelines. In case of shared VPC where the network resides in another host
project the network should specified in the form of projects/{host-project-id}/global/networks/{network} *)
}
[@@deriving yojson_of]
(** Network configuration options. These are required when a private Data Fusion instance is to be created. *)

type google_data_fusion_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_fusion_instance__timeouts *)

type google_data_fusion_instance = {
  dataproc_service_account : string option; [@option]
      (** User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. *)
  description : string option; [@option]
      (** An optional description of the instance. *)
  display_name : string option; [@option]
      (** Display name for an instance. *)
  enable_rbac : bool option; [@option]
      (** Option to enable granular role-based access control. *)
  enable_stackdriver_logging : bool option; [@option]
      (** Option to enable Stackdriver Logging. *)
  enable_stackdriver_monitoring : bool option; [@option]
      (** Option to enable Stackdriver Monitoring. *)
  labels : (string * string) list option; [@option]
      (** The resource labels for instance to use to annotate any related underlying resources,
such as Compute Engine VMs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  private_instance : bool option; [@option]
      (** Specifies whether the Data Fusion instance should be private. If set to
true, all Data Fusion nodes will have private IP addresses and will not be
able to access the public internet. *)
  type_ : string; [@key "type"]
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
  accelerators : google_data_fusion_instance__accelerators list;
  crypto_key_config :
    google_data_fusion_instance__crypto_key_config list;
  event_publish_config :
    google_data_fusion_instance__event_publish_config list;
  network_config : google_data_fusion_instance__network_config list;
  timeouts : google_data_fusion_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_data_fusion_instance *)

let google_data_fusion_instance ?dataproc_service_account
    ?description ?display_name ?enable_rbac
    ?enable_stackdriver_logging ?enable_stackdriver_monitoring
    ?labels ?private_instance ?timeouts ~name ~type_ ~accelerators
    ~crypto_key_config ~event_publish_config ~network_config
    __resource_id =
  let __resource_type = "google_data_fusion_instance" in
  let __resource =
    {
      dataproc_service_account;
      description;
      display_name;
      enable_rbac;
      enable_stackdriver_logging;
      enable_stackdriver_monitoring;
      labels;
      name;
      private_instance;
      type_;
      accelerators;
      crypto_key_config;
      event_publish_config;
      network_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_fusion_instance __resource);
  ()
