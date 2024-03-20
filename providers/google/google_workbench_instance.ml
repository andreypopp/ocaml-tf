(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gce_setup__accelerator_configs = {
  core_count: string  prop option; [@option] (** Optional. Count of cores of this accelerator. *)
  type_: string  prop option; [@option] [@key "type"] (** Optional. Type of this accelerator. Possible values: [NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_A100, NVIDIA_A100_80GB, NVIDIA_L4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS] *)
} [@@deriving yojson_of]
(** The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
[enough vCPUs and memory to support the 'machine_type' you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
Currently supports only one accelerator configuration. *)

type gce_setup__boot_disk = {
  disk_encryption: string  prop option; [@option] (** Optional. Input only. Disk encryption method used on the boot and
data disks, defaults to GMEK. Possible values: [GMEK, CMEK] *)
  disk_size_gb: string  prop option; [@option] (** Optional. The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the
recommended value of 150GB. *)
  disk_type: string  prop option; [@option] (** Optional. Indicates the type of the disk. Possible values: [PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  kms_key: string  prop option; [@option] (** 'Optional. The KMS key used to encrypt the disks, only
applicable if disk_encryption is CMEK. Format: 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
Learn more about using your own encryption keys.' *)
} [@@deriving yojson_of]
(** The definition of a boot disk. *)

type gce_setup__container_image = {
  repository: string prop;  (** The path to the container image repository.
For example: gcr.io/{project_id}/{imageName} *)
  tag: string  prop option; [@option] (** The tag of the container image. If not specified, this defaults to the latest tag. *)
} [@@deriving yojson_of]
(** Use a container image to start the workbench instance. *)

type gce_setup__data_disks = {
  disk_encryption: string  prop option; [@option] (** Optional. Input only. Disk encryption method used on the boot
and data disks, defaults to GMEK. Possible values: [GMEK, CMEK] *)
  disk_size_gb: string  prop option; [@option] (** Optional. The size of the disk in GB attached to this VM instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to
100. *)
  disk_type: string  prop option; [@option] (** Optional. Input only. Indicates the type of the disk. Possible values: [PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME] *)
  kms_key: string  prop option; [@option] (** 'Optional. The KMS key used to encrypt the disks,
only applicable if disk_encryption is CMEK. Format: 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
Learn more about using your own encryption keys.' *)
} [@@deriving yojson_of]
(** Data disks attached to the VM instance. Currently supports only one data disk. *)

type gce_setup__network_interfaces = {
  network: string  prop option; [@option] (** Optional. The name of the VPC that this VM instance is in. *)
  nic_type: string  prop option; [@option] (** Optional. The type of vNIC to be used on this interface. This
may be gVNIC or VirtioNet. Possible values: [VIRTIO_NET, GVNIC] *)
  subnet: string  prop option; [@option] (** Optional. The name of the subnet that this VM instance is in. *)
} [@@deriving yojson_of]
(** The network interfaces for the VM. Supports only one interface. *)

type gce_setup__service_accounts = {
  email: string  prop option; [@option] (** Optional. Email address of the service account. *)
} [@@deriving yojson_of]
(** The service account that serves as an identity for the VM instance. Currently supports only one service account. *)

type gce_setup__shielded_instance_config = {
  enable_integrity_monitoring: bool  prop option; [@option] (** Optional. Defines whether the VM instance has integrity monitoring
enabled. Enables monitoring and attestation of the boot integrity of the VM
instance. The attestation is performed against the integrity policy baseline.
This baseline is initially derived from the implicitly trusted boot image
when the VM instance is created. Enabled by default. *)
  enable_secure_boot: bool  prop option; [@option] (** Optional. Defines whether the VM instance has Secure Boot enabled.
Secure Boot helps ensure that the system only runs authentic software by verifying
the digital signature of all boot components, and halting the boot process
if signature verification fails. Disabled by default. *)
  enable_vtpm: bool  prop option; [@option] (** Optional. Defines whether the VM instance has the vTPM enabled.
Enabled by default. *)
} [@@deriving yojson_of]
(** A set of Shielded Instance options. See [Images using supported Shielded
VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
Not all combinations are valid. *)

type gce_setup__vm_image = {
  family: string  prop option; [@option] (** Optional. Use this VM image family to find the image; the newest
image in this family will be used. *)
  name: string  prop option; [@option] (** Optional. Use VM image name to find the image. *)
  project: string  prop option; [@option] (** The name of the Google Cloud project that this VM image belongs to.
Format: {project_id} *)
} [@@deriving yojson_of]
(** Definition of a custom Compute Engine virtual machine image for starting
a workbench instance with the environment installed directly on the VM. *)

type gce_setup = {
  disable_public_ip: bool  prop option; [@option] (** Optional. If true, no external IP will be assigned to this VM instance. *)
  enable_ip_forwarding: bool  prop option; [@option] (** Optional. Flag to enable ip forwarding or not, default false/off.
https://cloud.google.com/vpc/docs/using-routes#canipforward *)
  machine_type: string  prop option; [@option] (** Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource *)
  metadata: (string * string   prop) list option; [@option] (** Optional. Custom metadata to apply to this instance. *)
  tags: string   prop list option; [@option] (** Optional. The Compute Engine tags to add to instance (see [Tagging
instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). *)
  accelerator_configs: gce_setup__accelerator_configs list;
  boot_disk: gce_setup__boot_disk list;
  container_image: gce_setup__container_image list;
  data_disks: gce_setup__data_disks list;
  network_interfaces: gce_setup__network_interfaces list;
  service_accounts: gce_setup__service_accounts list;
  shielded_instance_config: gce_setup__shielded_instance_config list;
  vm_image: gce_setup__vm_image list;
} [@@deriving yojson_of]
(** The definition of how to configure a VM instance outside of Resources and Identity. *)

type timeouts = {
  create: string  prop option; [@option] (** create *)
  delete: string  prop option; [@option] (** delete *)
  update: string  prop option; [@option] (** update *)
} [@@deriving yojson_of]
(** timeouts *)

type health_info = {
} [@@deriving yojson_of]
type upgrade_history = {
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
  desired_state: string  prop option; [@option] (** Desired state of the Workbench Instance. Set this field to 'ACTIVE' to start the Instance, and 'STOPPED' to stop the Instance. *)
  disable_proxy_access: bool  prop option; [@option] (** Optional. If true, the workbench instance will not register with the proxy. *)
  id: string  prop option; [@option] (** id *)
  instance_id: string  prop option; [@option] (** Required. User-defined unique ID of this instance. *)
  instance_owners: string   prop list option; [@option] (** 'Optional. Input only. The owner of this instance after creation. Format:
'alias@example.com' Currently supports one owner only. If not specified, all of
the service account users of your VM instance''s service account can use the instance.' *)
  labels: (string * string   prop) list option; [@option] (** Optional. Labels to apply to this instance. These can be later modified
by the UpdateInstance method.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location: string prop;  (** Part of 'parent'. See documentation of 'projectsId'. *)
  name: string prop;  (** The name of this workbench instance. Format: 'projects/{project_id}/locations/{location}/instances/{instance_id}' *)
  project: string  prop option; [@option] (** project *)
  gce_setup: gce_setup list;
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** google_workbench_instance *)

let gce_setup__accelerator_configs ?core_count ?type_ () =
  ({
    core_count;
    type_;
  } : gce_setup__accelerator_configs);;

let gce_setup__boot_disk ?disk_encryption ?disk_size_gb ?disk_type ?kms_key () =
  ({
    disk_encryption;
    disk_size_gb;
    disk_type;
    kms_key;
  } : gce_setup__boot_disk);;

let gce_setup__container_image ?tag ~repository () =
  ({
    repository;
    tag;
  } : gce_setup__container_image);;

let gce_setup__data_disks ?disk_encryption ?disk_size_gb ?disk_type ?kms_key () =
  ({
    disk_encryption;
    disk_size_gb;
    disk_type;
    kms_key;
  } : gce_setup__data_disks);;

let gce_setup__network_interfaces ?network ?nic_type ?subnet () =
  ({
    network;
    nic_type;
    subnet;
  } : gce_setup__network_interfaces);;

let gce_setup__service_accounts ?email () =
  ({
    email;
  } : gce_setup__service_accounts);;

let gce_setup__shielded_instance_config ?enable_integrity_monitoring ?enable_secure_boot ?enable_vtpm () =
  ({
    enable_integrity_monitoring;
    enable_secure_boot;
    enable_vtpm;
  } : gce_setup__shielded_instance_config);;

let gce_setup__vm_image ?family ?name ?project () =
  ({
    family;
    name;
    project;
  } : gce_setup__vm_image);;

let gce_setup ?disable_public_ip ?enable_ip_forwarding ?machine_type ?metadata ?tags ~accelerator_configs ~boot_disk ~container_image ~data_disks ~network_interfaces ~service_accounts ~shielded_instance_config ~vm_image () =
  ({
    disable_public_ip;
    enable_ip_forwarding;
    machine_type;
    metadata;
    tags;
    accelerator_configs;
    boot_disk;
    container_image;
    data_disks;
    network_interfaces;
    service_accounts;
    shielded_instance_config;
    vm_image;
  } : gce_setup);;

let timeouts ?create ?delete ?update () =
  ({
    create;
    delete;
    update;
  } : timeouts);;

let google_workbench_instance ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup () =
  ({
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
  } : google_workbench_instance);;

type t = {
  create_time: string prop;
  creator: string prop;
  desired_state: string prop;
  disable_proxy_access: bool prop;
  effective_labels: (string * string) list prop;
  health_info: health_info list prop;
  health_state: string prop;
  id: string prop;
  instance_id: string prop;
  instance_owners: string list prop;
  labels: (string * string) list prop;
  location: string prop;
  name: string prop;
  project: string prop;
  proxy_uri: string prop;
  state: string prop;
  terraform_labels: (string * string) list prop;
  update_time: string prop;
  upgrade_history: upgrade_history list prop;
}

let make ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup __id =
  let __type = "google_workbench_instance" in
  let __attrs = ({
    create_time = Prop.computed __type __id "create_time";
    creator = Prop.computed __type __id "creator";
    desired_state = Prop.computed __type __id "desired_state";
    disable_proxy_access = Prop.computed __type __id "disable_proxy_access";
    effective_labels = Prop.computed __type __id "effective_labels";
    health_info = Prop.computed __type __id "health_info";
    health_state = Prop.computed __type __id "health_state";
    id = Prop.computed __type __id "id";
    instance_id = Prop.computed __type __id "instance_id";
    instance_owners = Prop.computed __type __id "instance_owners";
    labels = Prop.computed __type __id "labels";
    location = Prop.computed __type __id "location";
    name = Prop.computed __type __id "name";
    project = Prop.computed __type __id "project";
    proxy_uri = Prop.computed __type __id "proxy_uri";
    state = Prop.computed __type __id "state";
    terraform_labels = Prop.computed __type __id "terraform_labels";
    update_time = Prop.computed __type __id "update_time";
    upgrade_history = Prop.computed __type __id "upgrade_history";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_google_workbench_instance (google_workbench_instance ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup ());
    attrs=__attrs;
  };;

let register ?tf_module ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup __id =
  let (r : _ Tf_core.resource) = make ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?timeouts ~location ~name ~gce_setup __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

