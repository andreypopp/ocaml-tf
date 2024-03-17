(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataflow_job__timeouts = {
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataflow_job__timeouts *)

type google_dataflow_job = {
  enable_streaming_engine : bool option; [@option]
      (** Indicates if the job should use the streaming engine feature. *)
  ip_configuration : string option; [@option]
      (** The configuration for VM IPs. Options are WORKER_IP_PUBLIC or WORKER_IP_PRIVATE. *)
  kms_key_name : string option; [@option]
      (** The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY *)
  labels : (string * string) list option; [@option]
      (** User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  machine_type : string option; [@option]
      (** The machine type to use for the job. *)
  max_workers : float option; [@option]
      (** The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. *)
  name : string;
      (** A unique name for the resource, required by Dataflow. *)
  network : string option; [@option]
      (** The network to which VMs will be assigned. If it is not provided, default will be used. *)
  on_delete : string option; [@option]
      (** One of drain or cancel. Specifies behavior of deletion during terraform destroy. *)
  parameters : (string * string) list option; [@option]
      (** Key/Value pairs to be passed to the Dataflow job (as used in the template). *)
  region : string option; [@option]
      (** The region in which the created job should run. *)
  service_account_email : string option; [@option]
      (** The Service Account email used to create the job. *)
  skip_wait_on_job_termination : bool option; [@option]
      (** If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. *)
  subnetwork : string option; [@option]
      (** The subnetwork to which VMs will be assigned. Should be of the form regions/REGION/subnetworks/SUBNETWORK. *)
  temp_gcs_location : string;
      (** A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data. *)
  template_gcs_path : string;
      (** The Google Cloud Storage path to the Dataflow job template. *)
  transform_name_mapping : (string * string) list option; [@option]
      (** Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. *)
  zone : string option; [@option]
      (** The zone in which the created job should run. If it is not provided, the provider zone is used. *)
  timeouts : google_dataflow_job__timeouts option;
}
[@@deriving yojson_of]
(** google_dataflow_job *)

let google_dataflow_job ?enable_streaming_engine ?ip_configuration
    ?kms_key_name ?labels ?machine_type ?max_workers ?network
    ?on_delete ?parameters ?region ?service_account_email
    ?skip_wait_on_job_termination ?subnetwork ?transform_name_mapping
    ?zone ?timeouts ~name ~temp_gcs_location ~template_gcs_path
    __resource_id =
  let __resource_type = "google_dataflow_job" in
  let __resource =
    {
      enable_streaming_engine;
      ip_configuration;
      kms_key_name;
      labels;
      machine_type;
      max_workers;
      name;
      network;
      on_delete;
      parameters;
      region;
      service_account_email;
      skip_wait_on_job_termination;
      subnetwork;
      temp_gcs_location;
      template_gcs_path;
      transform_name_mapping;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataflow_job __resource);
  ()
