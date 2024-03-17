(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_workbench_instance__gce_setup__accelerator_configs = {
  core_count: string prop option; [@option] (** Optional. Count of cores of this accelerator. *)
  type_: string prop option; [@option] [@key "type"] (** Optional. Type of this accelerator. Possible values: [NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_A100, NVIDIA_A100_80GB, NVIDIA_L4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS] *)
} [@@deriving yojson_of]
(** The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
[enough vCPUs and memory to support the 'machine_type' you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
Currently supports only one accelerator configuration. *)

type google_workbench_instance__gce_setup__boot_disk = {
  disk_encryption: string prop option; [@option] (** Optional. Input only. Disk encryption method used on the boot and
data disks, defaults to GMEK. Possible values: [GMEK, CMEK] *)
  disk_size_gb: string prop option; [@option] (** Optional. The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the
recommended value of 150GB. *)
  disk_type: string prop option; [@option] (** Optional. Indicates the type of the disk. Possible values: [PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  kms_key: string prop option; [@option] (** 'Optional. The KMS key used to encrypt the disks, only
applicable if disk_encryption is CMEK. Format: 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
Learn more about using your own encryption keys.' *)
} [@@deriving yojson_of]
(** The definition of a boot disk. *)

type google_workbench_instance__gce_setup__container_image = {
  repository: string prop;  (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag: string prop option; [@option] (** The tag of the container image. If not specified, this defaults to the latest tag. *)
} [@@deriving yojson_of]
(** Use a container image to start the workbench instance. *)

type google_workbench_instance__gce_setup__data_disks = {
  disk_encryption: string prop option; [@option] (** Optional. Input only. Disk encryption method used on the boot
and data disks, defaults to GMEK. Possible values: [GMEK, CMEK] *)
  disk_size_gb: string prop option; [@option] (** Optional. The size of the disk in GB attached to this VM instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to
100. *)
  disk_type: string prop option; [@option] (** Optional. Input only. Indicates the type of the disk. Possible values: [PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  kms_key: string prop option; [@option] (** 'Optional. The KMS key used to encrypt the disks,
only applicable if disk_encryption is CMEK. Format: 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
Learn more about using your own encryption keys.' *)
} [@@deriving yojson_of]
(** Data disks attached to the VM instance. Currently supports only one data disk. *)

type google_workbench_instance__gce_setup__network_interfaces = {
  network: string prop option; [@option] (** Optional. The name of the VPC that this VM instance is in. *)
  nic_type: string prop option; [@option] (** Optional. The type of vNIC to be used on this interface. This
may be gVNIC or VirtioNet. Possible values: [VIRTIO_NET, GVNIC] *)
  subnet: string prop option; [@option] (** Optional. The name of the subnet that this VM instance is in. *)
} [@@deriving yojson_of]
(** The network interfaces for the VM. Supports only one interface. *)

type google_workbench_instance__gce_setup__service_accounts = {
  email: string prop option; [@option] (** Optional. Email address of the service account. *)
  scopes: string prop list;  (** Output only. The list of scopes to be made available for this
service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform *)
} [@@deriving yojson_of]
(** The service account that serves as an identity for the VM instance. Currently supports only one service account. *)

type google_workbench_instance__gce_setup__shielded_instance_config = {
  enable_integrity_monitoring: bool prop option; [@option] (** Optional. Defines whether the VM instance has integrity monitoring
enabled. Enables monitoring and attestation of the boot integrity of the VM
instance. The attestation is performed against the integrity policy baseline.
This baseline is initially derived from the implicitly trusted boot image
when the VM instance is created. Enabled by default. *)
  enable_secure_boot: bool prop option; [@option] (** Optional. Defines whether the VM instance has Secure Boot enabled.
Secure Boot helps ensure that the system only runs authentic software by verifying
the digital signature of all boot components, and halting the boot process
if signature verification fails. Disabled by default. *)
  enable_vtpm: bool prop option; [@option] (** Optional. Defines whether the VM instance has the vTPM enabled.
Enabled by default. *)
} [@@deriving yojson_of]
(** A set of Shielded Instance options. See [Images using supported Shielded
VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
Not all combinations are valid. *)

type google_workbench_instance__gce_setup__vm_image = {
  family: string prop option; [@option] (** Optional. Use this VM image family to find the image; the newest
image in this family will be used. *)
  name: string prop option; [@option] (** Optional. Use VM image name to find the image. *)
  project: string prop option; [@option] (** The name of the Google Cloud project that this VM image belongs to.
Format: {project_id} *)
} [@@deriving yojson_of]
(** Definition of a custom Compute Engine virtual machine image for starting
a workbench instance with the environment installed directly on the VM. *)

type google_workbench_instance__gce_setup = {
  disable_public_ip: bool prop option; [@option] (** Optional. If true, no external IP will be assigned to this VM instance. *)
  enable_ip_forwarding: bool prop option; [@option] (** Optional. Flag to enable ip forwarding or not, default false/off.
https://cloud.google.com/vpc/docs/using-routes#canipforward *)
  machine_type: string prop option; [@option] (** Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource *)
  metadata: (string * string prop) list option; [@option] (** Optional. Custom metadata to apply to this instance. *)
  tags: string prop list option; [@option] (** Optional. The Compute Engine tags to add to instance (see [Tagging
instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). *)
  accelerator_configs: google_workbench_instance__gce_setup__accelerator_configs list;
  boot_disk: google_workbench_instance__gce_setup__boot_disk list;
  container_image: google_workbench_instance__gce_setup__container_image list;
  data_disks: google_workbench_instance__gce_setup__data_disks list;
  network_interfaces: google_workbench_instance__gce_setup__network_interfaces list;
  service_accounts: google_workbench_instance__gce_setup__service_accounts list;
  shielded_instance_config: google_workbench_instance__gce_setup__shielded_instance_config list;
  vm_image: google_workbench_instance__gce_setup__vm_image list;
} [@@deriving yojson_of]
(** The definition of how to configure a VM instance outside of Resources and Identity. *)

type google_workbench_instance__timeouts = {
  create: string prop option; [@option] (** create *)
  delete: string prop option; [@option] (** delete *)
  update: string prop option; [@option] (** update *)
} [@@deriving yojson_of]
(** google_workbench_instance__timeouts *)

type google_workbench_instance__health_info = {
} [@@deriving yojson_of]
type google_workbench_instance__upgrade_history = {
  action: string prop;  (** action *)
  container_image: string prop;  (** container_image *)
  create_time: string prop;  (** create_time *)
  framework: string prop;  (** framework *)
  snapshot: string prop;  (** snapshot *)
  state: string prop;  (** state *)
  target_version: string prop;  (** target_version *)
  version: string prop;  (** version *)
  vm_image: string prop;  (** vm_image *)
} [@@deriving yojson_of]
type google_workbench_instance = {
  desired_state: string prop option; [@option] (** Desired state of the Workbench Instance. Set this field to 'ACTIVE' to start the Instance, and 'STOPPED' to stop the Instance. *)
  disable_proxy_access: bool prop option; [@option] (** Optional. If true, the workbench instance will not register with the proxy. *)
  id: string prop option; [@option] (** id *)
  instance_id: string prop option; [@option] (** Required. User-defined unique ID of this instance. *)
  instance_owners: string prop list option; [@option] (** 'Optional. Input only. The owner of this instance after creation. Format:
'alias@example.com' Currently supports one owner only. If not specified, all of
the service account users of your VM instance''s service account can use the instance.' *)
  labels: (string * string prop) list option; [@option] (** Optional. Labels to apply to this instance. These can be later modified
by the UpdateInstance method.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location: string prop;  (** Part of 'parent'. See documentation of 'projectsId'. *)
  name: string prop;  (** The name of this workbench instance. Format: 'projects/{project_id}/locations/{location}/instances/{instance_id}' *)
  project: string prop option; [@option] (** project *)
  gce_setup: google_workbench_instance__gce_setup list;
  timeouts: google_workbench_instance__timeouts option;
} [@@deriving yojson_of]
(** google_workbench_instance *)

let google_workbench_instance ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup __resource_id =
  let __resource_type = "google_workbench_instance" in
  let __resource = {
    desired_state;
    disable_proxy_access;
    id;
    instance_id;
    instance_owners;
    labels;
    location;
    name;
    project;
    gce_setup;
    timeouts;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_workbench_instance __resource);
  ()
  ;;

