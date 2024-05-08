(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gce_setup__accelerator_configs = {
  core_count: string  prop option; [@option]
  type_: string  prop option; [@option] [@key "type"]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__boot_disk = {
  disk_encryption: string  prop option; [@option]
  disk_size_gb: string  prop option; [@option]
  disk_type: string  prop option; [@option]
  kms_key: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__container_image = {
  repository: string prop; 
  tag: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__data_disks = {
  disk_encryption: string  prop option; [@option]
  disk_size_gb: string  prop option; [@option]
  disk_type: string  prop option; [@option]
  kms_key: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__network_interfaces = {
  network: string  prop option; [@option]
  nic_type: string  prop option; [@option]
  subnet: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__service_accounts = {
  email: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__shielded_instance_config = {
  enable_integrity_monitoring: bool  prop option; [@option]
  enable_secure_boot: bool  prop option; [@option]
  enable_vtpm: bool  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup__vm_image = {
  family: string  prop option; [@option]
  name: string  prop option; [@option]
  project: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type gce_setup = {
  disable_public_ip: bool  prop option; [@option]
  enable_ip_forwarding: bool  prop option; [@option]
  machine_type: string  prop option; [@option]
  metadata: (string * string   prop) list option; [@option]
  tags: string   prop list option; [@option]
  accelerator_configs: gce_setup__accelerator_configs list; [@default []] [@yojson_drop_default ( = )]
  boot_disk: gce_setup__boot_disk list; [@default []] [@yojson_drop_default ( = )]
  container_image: gce_setup__container_image list; [@default []] [@yojson_drop_default ( = )]
  data_disks: gce_setup__data_disks list; [@default []] [@yojson_drop_default ( = )]
  network_interfaces: gce_setup__network_interfaces list; [@default []] [@yojson_drop_default ( = )]
  service_accounts: gce_setup__service_accounts list; [@default []] [@yojson_drop_default ( = )]
  shielded_instance_config: gce_setup__shielded_instance_config list; [@default []] [@yojson_drop_default ( = )]
  vm_image: gce_setup__vm_image list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type timeouts = {
  create: string  prop option; [@option]
  delete: string  prop option; [@option]
  update: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type health_info = unit [@@deriving_inline yojson_of]
[@@@deriving.end]
type upgrade_history = {
  action: string prop; 
  container_image: string prop; 
  create_time: string prop; 
  framework: string prop; 
  snapshot: string prop; 
  state: string prop; 
  target_version: string prop; 
  version: string prop; 
  vm_image: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]
type google_workbench_instance = {
  desired_state: string  prop option; [@option]
  disable_proxy_access: bool  prop option; [@option]
  id: string  prop option; [@option]
  instance_id: string  prop option; [@option]
  instance_owners: string   prop list option; [@option]
  labels: (string * string   prop) list option; [@option]
  location: string prop; 
  name: string prop; 
  project: string  prop option; [@option]
  gce_setup: gce_setup list; [@default []] [@yojson_drop_default ( = )]
  timeouts: timeouts option;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

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

let gce_setup ?disable_public_ip ?enable_ip_forwarding ?machine_type ?metadata ?tags ?(accelerator_configs=[]) ?(boot_disk=[]) ?(container_image=[]) ?(data_disks=[]) ?(network_interfaces=[]) ?(service_accounts=[]) ?(shielded_instance_config=[]) ?(vm_image=[]) () =
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

let google_workbench_instance ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?(gce_setup=[]) ?timeouts ~location ~name () =
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
  tf_name: string;
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

let make ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?(gce_setup=[]) ?timeouts ~location ~name __id =
  let __type = "google_workbench_instance" in
  let __attrs = ({
    tf_name = __id;
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
    json=yojson_of_google_workbench_instance (google_workbench_instance ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ~gce_setup ?timeouts ~location ~name ());
    attrs=__attrs;
  };;

let register ?tf_module ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ?(gce_setup=[]) ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) = make ?desired_state ?disable_proxy_access ?id ?instance_id ?instance_owners ?labels ?project ~gce_setup ?timeouts ~location ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

