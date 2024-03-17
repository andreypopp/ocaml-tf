(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_notebooks_instance__accelerator_config = {
  core_count : float;  (** Count of cores of this accelerator. *)
  type_ : string; [@key "type"]
      (** Type of this accelerator. Possible values: [ACCELERATOR_TYPE_UNSPECIFIED, NVIDIA_TESLA_K80, NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS, NVIDIA_TESLA_A100, TPU_V2, TPU_V3] *)
}
[@@deriving yojson_of]
(** The hardware accelerator used on this instance. If you use accelerators,
make sure that your configuration has enough vCPUs and memory to support the
machineType you have selected. *)

type google_notebooks_instance__container_image = {
  repository : string;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a container image to start the notebook instance. *)

type google_notebooks_instance__reservation_affinity = {
  consume_reservation_type : string;
      (** The type of Compute Reservation. Possible values: [NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION] *)
  key : string option; [@option]
      (** Corresponds to the label key of reservation resource. *)
  values : string list option; [@option]
      (** Corresponds to the label values of reservation resource. *)
}
[@@deriving yojson_of]
(** Reservation Affinity for consuming Zonal reservation. *)

type google_notebooks_instance__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
boot integrity of the instance. The attestation is performed against the integrity policy baseline.
This baseline is initially derived from the implicitly trusted boot image when the instance is created.
Enabled by default. *)
  enable_secure_boot : bool option; [@option]
      (** Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
authentic software by verifying the digital signature of all boot components, and halting the boot process
if signature verification fails.
Disabled by default. *)
  enable_vtpm : bool option; [@option]
      (** Defines whether the instance has the vTPM enabled.
Enabled by default. *)
}
[@@deriving yojson_of]
(** A set of Shielded Instance options. Check [Images using supported Shielded VM features]
Not all combinations are valid *)

type google_notebooks_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_instance__timeouts *)

type google_notebooks_instance__vm_image = {
  image_family : string option; [@option]
      (** Use this VM image family to find the image; the newest image in this family will be used. *)
  image_name : string option; [@option]
      (** Use VM image name to find the image. *)
  project : string;
      (** The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id} *)
}
[@@deriving yojson_of]
(** Use a Compute Engine VM image to start the notebook instance. *)

type google_notebooks_instance = {
  boot_disk_size_gb : float option; [@option]
      (** The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
If not specified, this defaults to 100. *)
  boot_disk_type : string option; [@option]
      (** Possible disk types for notebook instances. Possible values: [DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  custom_gpu_driver_path : string option; [@option]
      (** Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we'll automatically choose from official GPU drivers. *)
  data_disk_size_gb : float option; [@option]
      (** The size of the data disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB).
You can choose the size of the data disk based on how big your notebooks and data are.
If not specified, this defaults to 100. *)
  data_disk_type : string option; [@option]
      (** Possible disk types for notebook instances. Possible values: [DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  desired_state : string option; [@option]
      (** Desired state of the Notebook Instance. Set this field to 'ACTIVE' to start the Instance, and 'STOPPED' to stop the Instance. *)
  install_gpu_driver : bool option; [@option]
      (** Whether the end user authorizes Google Cloud to install GPU driver
on this instance. If this field is empty or set to false, the GPU driver
won't be installed. Only applicable to instances with GPUs. *)
  instance_owners : string list option; [@option]
      (** The list of owners of this instance after creation.
Format: alias@example.com.
Currently supports one owner only.
If not specified, all of the service account users of
your VM instance's service account can use the instance. *)
  kms_key : string option; [@option]
      (** The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this instance. These can be later modified by the setLabels method.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** A reference to the zone where the machine resides. *)
  machine_type : string;
      (** A reference to a machine type which defines VM kind. *)
  metadata : (string * string) list option; [@option]
      (** Custom metadata to apply to this instance.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  name : string;
      (** The name specified for the Notebook instance. *)
  nic_type : string option; [@option]
      (** The type of vNIC driver. Possible values: [UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC] *)
  no_proxy_access : bool option; [@option]
      (** The notebook instance will not register with the proxy.. *)
  no_public_ip : bool option; [@option]
      (** No public IP will be assigned to this instance. *)
  no_remove_data_disk : bool option; [@option]
      (** If true, the data disk will not be auto deleted when deleting the instance. *)
  post_startup_script : string option; [@option]
      (** Path to a Bash script that automatically runs after a
notebook instance fully boots up. The path must be a URL
or Cloud Storage path (gs://path-to-file/file-name). *)
  accelerator_config :
    google_notebooks_instance__accelerator_config list;
  container_image : google_notebooks_instance__container_image list;
  reservation_affinity :
    google_notebooks_instance__reservation_affinity list;
  shielded_instance_config :
    google_notebooks_instance__shielded_instance_config list;
  timeouts : google_notebooks_instance__timeouts option;
  vm_image : google_notebooks_instance__vm_image list;
}
[@@deriving yojson_of]
(** google_notebooks_instance *)

let google_notebooks_instance ?boot_disk_size_gb ?boot_disk_type
    ?custom_gpu_driver_path ?data_disk_size_gb ?data_disk_type
    ?desired_state ?install_gpu_driver ?instance_owners ?kms_key
    ?labels ?metadata ?nic_type ?no_proxy_access ?no_public_ip
    ?no_remove_data_disk ?post_startup_script ?timeouts ~location
    ~machine_type ~name ~accelerator_config ~container_image
    ~reservation_affinity ~shielded_instance_config ~vm_image
    __resource_id =
  let __resource_type = "google_notebooks_instance" in
  let __resource =
    {
      boot_disk_size_gb;
      boot_disk_type;
      custom_gpu_driver_path;
      data_disk_size_gb;
      data_disk_type;
      desired_state;
      install_gpu_driver;
      instance_owners;
      kms_key;
      labels;
      location;
      machine_type;
      metadata;
      name;
      nic_type;
      no_proxy_access;
      no_public_ip;
      no_remove_data_disk;
      post_startup_script;
      accelerator_config;
      container_image;
      reservation_affinity;
      shielded_instance_config;
      timeouts;
      vm_image;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_instance __resource);
  ()
