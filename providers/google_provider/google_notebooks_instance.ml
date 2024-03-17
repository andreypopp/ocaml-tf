(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_instance__accelerator_config = {
  core_count : float prop;
      (** Count of cores of this accelerator. *)
  type_ : string prop; [@key "type"]
      (** Type of this accelerator. Possible values: [ACCELERATOR_TYPE_UNSPECIFIED, NVIDIA_TESLA_K80, NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS, NVIDIA_TESLA_A100, TPU_V2, TPU_V3] *)
}
[@@deriving yojson_of]
(** The hardware accelerator used on this instance. If you use accelerators,
make sure that your configuration has enough vCPUs and memory to support the
machineType you have selected. *)

type google_notebooks_instance__container_image = {
  repository : string prop;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string prop option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a container image to start the notebook instance. *)

type google_notebooks_instance__reservation_affinity = {
  consume_reservation_type : string prop;
      (** The type of Compute Reservation. Possible values: [NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION] *)
  key : string prop option; [@option]
      (** Corresponds to the label key of reservation resource. *)
  values : string prop list option; [@option]
      (** Corresponds to the label values of reservation resource. *)
}
[@@deriving yojson_of]
(** Reservation Affinity for consuming Zonal reservation. *)

type google_notebooks_instance__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
boot integrity of the instance. The attestation is performed against the integrity policy baseline.
This baseline is initially derived from the implicitly trusted boot image when the instance is created.
Enabled by default. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
authentic software by verifying the digital signature of all boot components, and halting the boot process
if signature verification fails.
Disabled by default. *)
  enable_vtpm : bool prop option; [@option]
      (** Defines whether the instance has the vTPM enabled.
Enabled by default. *)
}
[@@deriving yojson_of]
(** A set of Shielded Instance options. Check [Images using supported Shielded VM features]
Not all combinations are valid *)

type google_notebooks_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_instance__timeouts *)

type google_notebooks_instance__vm_image = {
  image_family : string prop option; [@option]
      (** Use this VM image family to find the image; the newest image in this family will be used. *)
  image_name : string prop option; [@option]
      (** Use VM image name to find the image. *)
  project : string prop;
      (** The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id} *)
}
[@@deriving yojson_of]
(** Use a Compute Engine VM image to start the notebook instance. *)

type google_notebooks_instance = {
  boot_disk_size_gb : float prop option; [@option]
      (** The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
If not specified, this defaults to 100. *)
  boot_disk_type : string prop option; [@option]
      (** Possible disk types for notebook instances. Possible values: [DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  create_time : string prop option; [@option]
      (** Instance creation time *)
  custom_gpu_driver_path : string prop option; [@option]
      (** Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we'll automatically choose from official GPU drivers. *)
  data_disk_size_gb : float prop option; [@option]
      (** The size of the data disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB).
You can choose the size of the data disk based on how big your notebooks and data are.
If not specified, this defaults to 100. *)
  data_disk_type : string prop option; [@option]
      (** Possible disk types for notebook instances. Possible values: [DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  desired_state : string prop option; [@option]
      (** Desired state of the Notebook Instance. Set this field to 'ACTIVE' to start the Instance, and 'STOPPED' to stop the Instance. *)
  disk_encryption : string prop option; [@option]
      (** Disk encryption method used on the boot and data disks, defaults to GMEK. Possible values: [DISK_ENCRYPTION_UNSPECIFIED, GMEK, CMEK] *)
  id : string prop option; [@option]  (** id *)
  install_gpu_driver : bool prop option; [@option]
      (** Whether the end user authorizes Google Cloud to install GPU driver
on this instance. If this field is empty or set to false, the GPU driver
won't be installed. Only applicable to instances with GPUs. *)
  instance_owners : string prop list option; [@option]
      (** The list of owners of this instance after creation.
Format: alias@example.com.
Currently supports one owner only.
If not specified, all of the service account users of
your VM instance's service account can use the instance. *)
  kms_key : string prop option; [@option]
      (** The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this instance. These can be later modified by the setLabels method.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** A reference to the zone where the machine resides. *)
  machine_type : string prop;
      (** A reference to a machine type which defines VM kind. *)
  metadata : (string * string prop) list option; [@option]
      (** Custom metadata to apply to this instance.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  name : string prop;
      (** The name specified for the Notebook instance. *)
  network : string prop option; [@option]
      (** The name of the VPC that this instance is in.
Format: projects/{project_id}/global/networks/{network_id} *)
  nic_type : string prop option; [@option]
      (** The type of vNIC driver. Possible values: [UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC] *)
  no_proxy_access : bool prop option; [@option]
      (** The notebook instance will not register with the proxy.. *)
  no_public_ip : bool prop option; [@option]
      (** No public IP will be assigned to this instance. *)
  no_remove_data_disk : bool prop option; [@option]
      (** If true, the data disk will not be auto deleted when deleting the instance. *)
  post_startup_script : string prop option; [@option]
      (** Path to a Bash script that automatically runs after a
notebook instance fully boots up. The path must be a URL
or Cloud Storage path (gs://path-to-file/file-name). *)
  project : string prop option; [@option]  (** project *)
  service_account : string prop option; [@option]
      (** The service account on this instance, giving access to other
Google Cloud services. You can use any service account within
the same project, but you must have the service account user
permission to use the instance. If not specified,
the Compute Engine default service account is used. *)
  service_account_scopes : string prop list option; [@option]
      (** Optional. The URIs of service account scopes to be included in Compute Engine instances.
If not specified, the following scopes are defined:
- https://www.googleapis.com/auth/cloud-platform
- https://www.googleapis.com/auth/userinfo.email *)
  subnet : string prop option; [@option]
      (** The name of the subnet that this instance is in.
Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id} *)
  tags : string prop list option; [@option]
      (** The Compute Engine tags to add to instance. *)
  update_time : string prop option; [@option]
      (** Instance update time. *)
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
    ?create_time ?custom_gpu_driver_path ?data_disk_size_gb
    ?data_disk_type ?desired_state ?disk_encryption ?id
    ?install_gpu_driver ?instance_owners ?kms_key ?labels ?metadata
    ?network ?nic_type ?no_proxy_access ?no_public_ip
    ?no_remove_data_disk ?post_startup_script ?project
    ?service_account ?service_account_scopes ?subnet ?tags
    ?update_time ?timeouts ~location ~machine_type ~name
    ~accelerator_config ~container_image ~reservation_affinity
    ~shielded_instance_config ~vm_image __resource_id =
  let __resource_type = "google_notebooks_instance" in
  let __resource =
    {
      boot_disk_size_gb;
      boot_disk_type;
      create_time;
      custom_gpu_driver_path;
      data_disk_size_gb;
      data_disk_type;
      desired_state;
      disk_encryption;
      id;
      install_gpu_driver;
      instance_owners;
      kms_key;
      labels;
      location;
      machine_type;
      metadata;
      name;
      network;
      nic_type;
      no_proxy_access;
      no_public_ip;
      no_remove_data_disk;
      post_startup_script;
      project;
      service_account;
      service_account_scopes;
      subnet;
      tags;
      update_time;
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
