(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dataflow_job = {
  additional_experiments : string prop list option; [@option]
      (** List of experiments that should be used by the job. An example value is [enable_stackdriver_agent_metrics]. *)
  enable_streaming_engine : bool prop option; [@option]
      (** Indicates if the job should use the streaming engine feature. *)
  id : string prop option; [@option]  (** id *)
  ip_configuration : string prop option; [@option]
      (** The configuration for VM IPs. Options are WORKER_IP_PUBLIC or WORKER_IP_PRIVATE. *)
  kms_key_name : string prop option; [@option]
      (** The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY *)
  labels : (string * string prop) list option; [@option]
      (** User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  machine_type : string prop option; [@option]
      (** The machine type to use for the job. *)
  max_workers : float prop option; [@option]
      (** The number of workers permitted to work on the job. More workers may improve processing speed at additional cost. *)
  name : string prop;
      (** A unique name for the resource, required by Dataflow. *)
  network : string prop option; [@option]
      (** The network to which VMs will be assigned. If it is not provided, default will be used. *)
  on_delete : string prop option; [@option]
      (** One of drain or cancel. Specifies behavior of deletion during terraform destroy. *)
  parameters : (string * string prop) list option; [@option]
      (** Key/Value pairs to be passed to the Dataflow job (as used in the template). *)
  project : string prop option; [@option]
      (** The project in which the resource belongs. *)
  region : string prop option; [@option]
      (** The region in which the created job should run. *)
  service_account_email : string prop option; [@option]
      (** The Service Account email used to create the job. *)
  skip_wait_on_job_termination : bool prop option; [@option]
      (** If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. *)
  subnetwork : string prop option; [@option]
      (** The subnetwork to which VMs will be assigned. Should be of the form regions/REGION/subnetworks/SUBNETWORK. *)
  temp_gcs_location : string prop;
      (** A writeable location on Google Cloud Storage for the Dataflow job to dump its temporary data. *)
  template_gcs_path : string prop;
      (** The Google Cloud Storage path to the Dataflow job template. *)
  transform_name_mapping : (string * string prop) list option;
      [@option]
      (** Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. *)
  zone : string prop option; [@option]
      (** The zone in which the created job should run. If it is not provided, the provider zone is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dataflow_job *)

let timeouts ?update () : timeouts = { update }

let google_dataflow_job ?additional_experiments
    ?enable_streaming_engine ?id ?ip_configuration ?kms_key_name
    ?labels ?machine_type ?max_workers ?network ?on_delete
    ?parameters ?project ?region ?service_account_email
    ?skip_wait_on_job_termination ?subnetwork ?transform_name_mapping
    ?zone ?timeouts ~name ~temp_gcs_location ~template_gcs_path () :
    google_dataflow_job =
  {
    additional_experiments;
    enable_streaming_engine;
    id;
    ip_configuration;
    kms_key_name;
    labels;
    machine_type;
    max_workers;
    name;
    network;
    on_delete;
    parameters;
    project;
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

type t = {
  additional_experiments : string list prop;
  effective_labels : (string * string) list prop;
  enable_streaming_engine : bool prop;
  id : string prop;
  ip_configuration : string prop;
  job_id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  max_workers : float prop;
  name : string prop;
  network : string prop;
  on_delete : string prop;
  parameters : (string * string) list prop;
  project : string prop;
  region : string prop;
  service_account_email : string prop;
  skip_wait_on_job_termination : bool prop;
  state : string prop;
  subnetwork : string prop;
  temp_gcs_location : string prop;
  template_gcs_path : string prop;
  terraform_labels : (string * string) list prop;
  transform_name_mapping : (string * string) list prop;
  type_ : string prop;
  zone : string prop;
}

let register ?tf_module ?additional_experiments
    ?enable_streaming_engine ?id ?ip_configuration ?kms_key_name
    ?labels ?machine_type ?max_workers ?network ?on_delete
    ?parameters ?project ?region ?service_account_email
    ?skip_wait_on_job_termination ?subnetwork ?transform_name_mapping
    ?zone ?timeouts ~name ~temp_gcs_location ~template_gcs_path
    __resource_id =
  let __resource_type = "google_dataflow_job" in
  let __resource =
    google_dataflow_job ?additional_experiments
      ?enable_streaming_engine ?id ?ip_configuration ?kms_key_name
      ?labels ?machine_type ?max_workers ?network ?on_delete
      ?parameters ?project ?region ?service_account_email
      ?skip_wait_on_job_termination ?subnetwork
      ?transform_name_mapping ?zone ?timeouts ~name
      ~temp_gcs_location ~template_gcs_path ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataflow_job __resource);
  let __resource_attributes =
    ({
       additional_experiments =
         Prop.computed __resource_type __resource_id
           "additional_experiments";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       enable_streaming_engine =
         Prop.computed __resource_type __resource_id
           "enable_streaming_engine";
       id = Prop.computed __resource_type __resource_id "id";
       ip_configuration =
         Prop.computed __resource_type __resource_id
           "ip_configuration";
       job_id = Prop.computed __resource_type __resource_id "job_id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
       labels = Prop.computed __resource_type __resource_id "labels";
       machine_type =
         Prop.computed __resource_type __resource_id "machine_type";
       max_workers =
         Prop.computed __resource_type __resource_id "max_workers";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       on_delete =
         Prop.computed __resource_type __resource_id "on_delete";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       service_account_email =
         Prop.computed __resource_type __resource_id
           "service_account_email";
       skip_wait_on_job_termination =
         Prop.computed __resource_type __resource_id
           "skip_wait_on_job_termination";
       state = Prop.computed __resource_type __resource_id "state";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
       temp_gcs_location =
         Prop.computed __resource_type __resource_id
           "temp_gcs_location";
       template_gcs_path =
         Prop.computed __resource_type __resource_id
           "template_gcs_path";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       transform_name_mapping =
         Prop.computed __resource_type __resource_id
           "transform_name_mapping";
       type_ = Prop.computed __resource_type __resource_id "type";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
