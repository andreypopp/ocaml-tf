(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_runtime__access_config = {
  access_type : string prop option; [@option]
      (** The type of access mode this instance. For valid values, see
'https://cloud.google.com/vertex-ai/docs/workbench/reference/
rest/v1/projects.locations.runtimes#RuntimeAccessType'. *)
  proxy_uri : string prop;
      (** The proxy endpoint that is used to access the runtime. *)
  runtime_owner : string prop option; [@option]
      (** The owner of this runtime after creation. Format: 'alias@example.com'.
Currently supports one owner only. *)
}
[@@deriving yojson_of]
(** The config settings for accessing runtime. *)

type google_notebooks_runtime__software_config__kernels = {
  repository : string prop;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string prop option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a list of container images to use as Kernels in the notebook instance. *)

type google_notebooks_runtime__software_config = {
  custom_gpu_driver_path : string prop option; [@option]
      (** Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we'll automatically choose from official GPU drivers. *)
  enable_health_monitoring : bool prop option; [@option]
      (** Verifies core internal services are running. Default: True. *)
  idle_shutdown : bool prop option; [@option]
      (** Runtime will automatically shutdown after idle_shutdown_time.
Default: True *)
  idle_shutdown_timeout : float prop option; [@option]
      (** Time in minutes to wait before shuting down runtime.
Default: 180 minutes *)
  install_gpu_driver : bool prop option; [@option]
      (** Install Nvidia Driver automatically. *)
  notebook_upgrade_schedule : string prop option; [@option]
      (** Cron expression in UTC timezone for schedule instance auto upgrade.
Please follow the [cron format](https://en.wikipedia.org/wiki/Cron). *)
  post_startup_script : string prop option; [@option]
      (** Path to a Bash script that automatically runs after a notebook instance
fully boots up. The path must be a URL or
Cloud Storage path (gs://path-to-file/file-name). *)
  post_startup_script_behavior : string prop option; [@option]
      (** Behavior for the post startup script. Possible values: [POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED, RUN_EVERY_START, DOWNLOAD_AND_RUN_EVERY_START] *)
  upgradeable : bool prop;
      (** Bool indicating whether an newer image is available in an image family. *)
  kernels : google_notebooks_runtime__software_config__kernels list;
}
[@@deriving yojson_of]
(** The config settings for software inside the runtime. *)

type google_notebooks_runtime__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_notebooks_runtime__timeouts *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__accelerator_config = {
  core_count : float prop option; [@option]
      (** Count of cores of this accelerator. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Accelerator model. For valid values, see
'https://cloud.google.com/vertex-ai/docs/workbench/reference/
rest/v1/projects.locations.runtimes#AcceleratorType' *)
}
[@@deriving yojson_of]
(** The Compute Engine accelerator configuration for this runtime. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__container_images = {
  repository : string prop;
      (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag : string prop option; [@option]
      (** The tag of the container image. If not specified, this defaults to the latest tag. *)
}
[@@deriving yojson_of]
(** Use a list of container images to start the notebook instance. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk__initialize_params = {
  description : string prop option; [@option]
      (** Provide this property when creating the disk. *)
  disk_name : string prop option; [@option]
      (** Specifies the disk name. If not specified, the default is
to use the name of the instance. If the disk with the
instance name exists already in the given zone/region, a
new name will be automatically generated. *)
  disk_size_gb : float prop option; [@option]
      (** Specifies the size of the disk in base-2 GB. If not
specified, the disk will be the same size as the image
(usually 10GB). If specified, the size must be equal to
or larger than 10GB. Default 100 GB. *)
  disk_type : string prop option; [@option]
      (** The type of the boot disk attached to this runtime,
defaults to standard persistent disk. For valid values,
see 'https://cloud.google.com/vertex-ai/docs/workbench/
reference/rest/v1/projects.locations.runtimes#disktype' *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this disk. These can be later modified
by the disks.setLabels method. This field is only
applicable for persistent disks. *)
}
[@@deriving yojson_of]
(** Input only. Specifies the parameters for a new disk that will
be created alongside the new instance. Use initialization
parameters to create boot disks or local SSDs attached to the
new instance. This property is mutually exclusive with the
source property; you can only define one or the other, but not
both. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk = {
  auto_delete : bool prop;
      (** Optional. Specifies whether the disk will be auto-deleted
when the instance is deleted (but not when the disk is
detached from the instance). *)
  boot : bool prop;
      (** Optional. Indicates that this is a boot disk. The virtual
machine will use the first partition of the disk for its
root filesystem. *)
  device_name : string prop;
      (** Optional. Specifies a unique device name of your choice
that is reflected into the /dev/disk/by-id/google-* tree
of a Linux operating system running within the instance.
This name can be used to reference the device for mounting,
resizing, and so on, from within the instance.
If not specified, the server chooses a default device name
to apply to this disk, in the form persistent-disk-x, where
x is a number assigned by Google Compute Engine. This field
is only applicable for persistent disks. *)
  guest_os_features : string prop list;
      (** Indicates a list of features to enable on the guest operating
system. Applicable only for bootable images. To see a list of
available features, read 'https://cloud.google.com/compute/docs/
images/create-delete-deprecate-private-images#guest-os-features'
options. '' *)
  index : float prop;
      (** Output only. A zero-based index to this disk, where 0 is
reserved for the boot disk. If you have many disks attached
to an instance, each disk would have a unique index number. *)
  interface : string prop option; [@option]
      (** Specifies the disk interface to use for attaching this disk,
which is either SCSI or NVME. The default is SCSI. Persistent
disks must always use SCSI and the request will fail if you attempt
to attach a persistent disk in any other format than SCSI. Local SSDs
can use either NVME or SCSI. For performance characteristics of SCSI
over NVMe, see Local SSD performance. Valid values: * NVME * SCSI. *)
  kind : string prop;
      (** Type of the resource. Always compute#attachedDisk for attached
disks. *)
  licenses : string prop list;
      (** Output only. Any valid publicly visible licenses. *)
  mode : string prop option; [@option]
      (** The mode in which to attach this disk, either READ_WRITE
or READ_ONLY. If not specified, the default is to attach
the disk in READ_WRITE mode. *)
  source : string prop option; [@option]
      (** Specifies a valid partial or full URL to an existing
Persistent Disk resource. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Specifies the type of the disk, either SCRATCH or PERSISTENT.
If not specified, the default is PERSISTENT. *)
  initialize_params :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk__initialize_params
    list;
}
[@@deriving yojson_of]
(** Data disk option configuration settings. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__encryption_config = {
  kms_key : string prop option; [@option]
      (** The Cloud KMS resource identifier of the customer-managed
encryption key used to protect a resource, such as a disks.
It has the following format:
'projects/{PROJECT_ID}/locations/{REGION}/keyRings/
{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}' *)
}
[@@deriving yojson_of]
(** Encryption settings for virtual machine data disk. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled.
Enables monitoring and attestation of the boot integrity of
the instance. The attestation is performed against the
integrity policy baseline. This baseline is initially derived
from the implicitly trusted boot image when the instance is
created. Enabled by default. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled.Secure
Boot helps ensure that the system only runs authentic software
by verifying the digital signature of all boot components, and
halting the boot process if signature verification fails.
Disabled by default. *)
  enable_vtpm : bool prop option; [@option]
      (** Defines whether the instance has the vTPM enabled. Enabled by
default. *)
}
[@@deriving yojson_of]
(** Shielded VM Instance configuration settings. *)

type google_notebooks_runtime__virtual_machine__virtual_machine_config = {
  guest_attributes : (string * string prop) list;
      (** The Compute Engine guest attributes. (see [Project and instance
guest attributes](https://cloud.google.com/compute/docs/
storing-retrieving-metadata#guest_attributes)). *)
  internal_ip_only : bool prop option; [@option]
      (** If true, runtime will only have internal IP addresses. By default,
runtimes are not restricted to internal IP addresses, and will
have ephemeral external IP addresses assigned to each vm. This
'internal_ip_only' restriction can only be enabled for subnetwork
enabled networks, and all dependencies must be configured to be
accessible without external IP addresses. *)
  labels : (string * string prop) list option; [@option]
      (** The labels to associate with this runtime. Label **keys** must
contain 1 to 63 characters, and must conform to [RFC 1035]
(https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
empty, but, if present, must contain 1 to 63 characters, and must
conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
more than 32 labels can be associated with a cluster. *)
  machine_type : string prop;
      (** The Compute Engine machine type used for runtimes. *)
  metadata : (string * string prop) list option; [@option]
      (** The Compute Engine metadata entries to add to virtual machine.
(see [Project and instance metadata](https://cloud.google.com
/compute/docs/storing-retrieving-metadata#project_and_instance
_metadata)). *)
  network : string prop option; [@option]
      (** The Compute Engine network to be used for machine communications.
Cannot be specified with subnetwork. If neither 'network' nor
'subnet' is specified, the default network of the project is
used, if it exists. A full URL or partial URI. Examples:
  * 'https://www.googleapis.com/compute/v1/projects/[project_id]/
  regions/global/default'
  * 'projects/[project_id]/regions/global/default'
Runtimes are managed resources inside Google Infrastructure.
Runtimes support the following network configurations:
  * Google Managed Network (Network & subnet are empty)
  * Consumer Project VPC (network & subnet are required). Requires
  configuring Private Service Access.
  * Shared VPC (network & subnet are required). Requires
  configuring Private Service Access. *)
  nic_type : string prop option; [@option]
      (** The type of vNIC to be used on this interface. This may be gVNIC
or VirtioNet. Possible values: [UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC] *)
  reserved_ip_range : string prop option; [@option]
      (** Reserved IP Range name is used for VPC Peering. The
subnetwork allocation will use the range *name* if it's assigned. *)
  subnet : string prop option; [@option]
      (** The Compute Engine subnetwork to be used for machine
communications. Cannot be specified with network. A full URL or
partial URI are valid. Examples:
  * 'https://www.googleapis.com/compute/v1/projects/[project_id]/
  regions/us-east1/subnetworks/sub0'
  * 'projects/[project_id]/regions/us-east1/subnetworks/sub0' *)
  tags : string prop list option; [@option]
      (** The Compute Engine tags to add to runtime (see [Tagging instances]
(https://cloud.google.com/compute/docs/
label-or-tag-resources#tags)). *)
  zone : string prop;
      (** The zone where the virtual machine is located. *)
  accelerator_config :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__accelerator_config
    list;
  container_images :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__container_images
    list;
  data_disk :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk
    list;
  encryption_config :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__encryption_config
    list;
  shielded_instance_config :
    google_notebooks_runtime__virtual_machine__virtual_machine_config__shielded_instance_config
    list;
}
[@@deriving yojson_of]
(** Virtual Machine configuration settings. *)

type google_notebooks_runtime__virtual_machine = {
  instance_id : string prop;
      (** The unique identifier of the Managed Compute Engine instance. *)
  instance_name : string prop;
      (** The user-friendly name of the Managed Compute Engine instance. *)
  virtual_machine_config :
    google_notebooks_runtime__virtual_machine__virtual_machine_config
    list;
}
[@@deriving yojson_of]
(** Use a Compute Engine VM image to start the managed notebook instance. *)

type google_notebooks_runtime__metrics = {
  system_metrics : (string * string prop) list;  (** system_metrics *)
}
[@@deriving yojson_of]

type google_notebooks_runtime = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels to associate with this runtime. Label **keys** must
contain 1 to 63 characters, and must conform to [RFC 1035]
(https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
empty, but, if present, must contain 1 to 63 characters, and must
conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
more than 32 labels can be associated with a cluster.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** A reference to the zone where the machine resides. *)
  name : string prop;
      (** The name specified for the Notebook runtime. *)
  project : string prop option; [@option]  (** project *)
  access_config : google_notebooks_runtime__access_config list;
  software_config : google_notebooks_runtime__software_config list;
  timeouts : google_notebooks_runtime__timeouts option;
  virtual_machine : google_notebooks_runtime__virtual_machine list;
}
[@@deriving yojson_of]
(** google_notebooks_runtime *)

let google_notebooks_runtime ?id ?labels ?project ?timeouts ~location
    ~name ~access_config ~software_config ~virtual_machine
    __resource_id =
  let __resource_type = "google_notebooks_runtime" in
  let __resource =
    {
      id;
      labels;
      location;
      name;
      project;
      access_config;
      software_config;
      timeouts;
      virtual_machine;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_runtime __resource);
  ()
