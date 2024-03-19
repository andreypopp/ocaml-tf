(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type block_device_mappings__ebs = {
  delete_on_termination : string prop option; [@option]
      (** delete_on_termination *)
  encrypted : string prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** block_device_mappings__ebs *)

type block_device_mappings = {
  device_name : string prop option; [@option]  (** device_name *)
  no_device : string prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
  ebs : block_device_mappings__ebs list;
}
[@@deriving yojson_of]
(** block_device_mappings *)

type capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string prop option;
      [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** capacity_reservation_specification__capacity_reservation_target *)

type capacity_reservation_specification = {
  capacity_reservation_preference : string prop option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** capacity_reservation_specification *)

type cpu_options = {
  amd_sev_snp : string prop option; [@option]  (** amd_sev_snp *)
  core_count : float prop option; [@option]  (** core_count *)
  threads_per_core : float prop option; [@option]
      (** threads_per_core *)
}
[@@deriving yojson_of]
(** cpu_options *)

type credit_specification = {
  cpu_credits : string prop option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** credit_specification *)

type elastic_gpu_specifications = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** elastic_gpu_specifications *)

type elastic_inference_accelerator = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** elastic_inference_accelerator *)

type enclave_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** enclave_options *)

type hibernation_options = {
  configured : bool prop;  (** configured *)
}
[@@deriving yojson_of]
(** hibernation_options *)

type iam_instance_profile = {
  arn : string prop option; [@option]  (** arn *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** iam_instance_profile *)

type instance_market_options__spot_options = {
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  instance_interruption_behavior : string prop option; [@option]
      (** instance_interruption_behavior *)
  max_price : string prop option; [@option]  (** max_price *)
  spot_instance_type : string prop option; [@option]
      (** spot_instance_type *)
  valid_until : string prop option; [@option]  (** valid_until *)
}
[@@deriving yojson_of]
(** instance_market_options__spot_options *)

type instance_market_options = {
  market_type : string prop option; [@option]  (** market_type *)
  spot_options : instance_market_options__spot_options list;
}
[@@deriving yojson_of]
(** instance_market_options *)

type instance_requirements__accelerator_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__accelerator_count *)

type instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__accelerator_total_memory_mib *)

type instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__baseline_ebs_bandwidth_mbps *)

type instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__memory_gib_per_vcpu *)

type instance_requirements__memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop;  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__memory_mib *)

type instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__network_bandwidth_gbps *)

type instance_requirements__network_interface_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__network_interface_count *)

type instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__total_local_storage_gb *)

type instance_requirements__vcpu_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop;  (** min *)
}
[@@deriving yojson_of]
(** instance_requirements__vcpu_count *)

type instance_requirements = {
  accelerator_manufacturers : string prop list option; [@option]
      (** accelerator_manufacturers *)
  accelerator_names : string prop list option; [@option]
      (** accelerator_names *)
  accelerator_types : string prop list option; [@option]
      (** accelerator_types *)
  allowed_instance_types : string prop list option; [@option]
      (** allowed_instance_types *)
  bare_metal : string prop option; [@option]  (** bare_metal *)
  burstable_performance : string prop option; [@option]
      (** burstable_performance *)
  cpu_manufacturers : string prop list option; [@option]
      (** cpu_manufacturers *)
  excluded_instance_types : string prop list option; [@option]
      (** excluded_instance_types *)
  instance_generations : string prop list option; [@option]
      (** instance_generations *)
  local_storage : string prop option; [@option]  (** local_storage *)
  local_storage_types : string prop list option; [@option]
      (** local_storage_types *)
  on_demand_max_price_percentage_over_lowest_price :
    float prop option;
      [@option]
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool prop option; [@option]
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float prop option;
      [@option]
      (** spot_max_price_percentage_over_lowest_price *)
  accelerator_count : instance_requirements__accelerator_count list;
  accelerator_total_memory_mib :
    instance_requirements__accelerator_total_memory_mib list;
  baseline_ebs_bandwidth_mbps :
    instance_requirements__baseline_ebs_bandwidth_mbps list;
  memory_gib_per_vcpu :
    instance_requirements__memory_gib_per_vcpu list;
  memory_mib : instance_requirements__memory_mib list;
  network_bandwidth_gbps :
    instance_requirements__network_bandwidth_gbps list;
  network_interface_count :
    instance_requirements__network_interface_count list;
  total_local_storage_gb :
    instance_requirements__total_local_storage_gb list;
  vcpu_count : instance_requirements__vcpu_count list;
}
[@@deriving yojson_of]
(** instance_requirements *)

type license_specification = {
  license_configuration_arn : string prop;
      (** license_configuration_arn *)
}
[@@deriving yojson_of]
(** license_specification *)

type maintenance_options = {
  auto_recovery : string prop option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** maintenance_options *)

type metadata_options = {
  http_endpoint : string prop option; [@option]  (** http_endpoint *)
  http_protocol_ipv6 : string prop option; [@option]
      (** http_protocol_ipv6 *)
  http_put_response_hop_limit : float prop option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string prop option; [@option]  (** http_tokens *)
  instance_metadata_tags : string prop option; [@option]
      (** instance_metadata_tags *)
}
[@@deriving yojson_of]
(** metadata_options *)

type monitoring = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** monitoring *)

type network_interfaces = {
  associate_carrier_ip_address : string prop option; [@option]
      (** associate_carrier_ip_address *)
  associate_public_ip_address : string prop option; [@option]
      (** associate_public_ip_address *)
  delete_on_termination : string prop option; [@option]
      (** delete_on_termination *)
  description : string prop option; [@option]  (** description *)
  device_index : float prop option; [@option]  (** device_index *)
  interface_type : string prop option; [@option]
      (** interface_type *)
  ipv4_address_count : float prop option; [@option]
      (** ipv4_address_count *)
  ipv4_addresses : string prop list option; [@option]
      (** ipv4_addresses *)
  ipv4_prefix_count : float prop option; [@option]
      (** ipv4_prefix_count *)
  ipv4_prefixes : string prop list option; [@option]
      (** ipv4_prefixes *)
  ipv6_address_count : float prop option; [@option]
      (** ipv6_address_count *)
  ipv6_addresses : string prop list option; [@option]
      (** ipv6_addresses *)
  ipv6_prefix_count : float prop option; [@option]
      (** ipv6_prefix_count *)
  ipv6_prefixes : string prop list option; [@option]
      (** ipv6_prefixes *)
  network_card_index : float prop option; [@option]
      (** network_card_index *)
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_interfaces *)

type placement = {
  affinity : string prop option; [@option]  (** affinity *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  group_name : string prop option; [@option]  (** group_name *)
  host_id : string prop option; [@option]  (** host_id *)
  host_resource_group_arn : string prop option; [@option]
      (** host_resource_group_arn *)
  partition_number : float prop option; [@option]
      (** partition_number *)
  spread_domain : string prop option; [@option]  (** spread_domain *)
  tenancy : string prop option; [@option]  (** tenancy *)
}
[@@deriving yojson_of]
(** placement *)

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** private_dns_name_options *)

type tag_specifications = {
  resource_type : string prop option; [@option]  (** resource_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** tag_specifications *)

type aws_launch_template = {
  default_version : float prop option; [@option]
      (** default_version *)
  description : string prop option; [@option]  (** description *)
  disable_api_stop : bool prop option; [@option]
      (** disable_api_stop *)
  disable_api_termination : bool prop option; [@option]
      (** disable_api_termination *)
  ebs_optimized : string prop option; [@option]  (** ebs_optimized *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop option; [@option]  (** image_id *)
  instance_initiated_shutdown_behavior : string prop option;
      [@option]
      (** instance_initiated_shutdown_behavior *)
  instance_type : string prop option; [@option]  (** instance_type *)
  kernel_id : string prop option; [@option]  (** kernel_id *)
  key_name : string prop option; [@option]  (** key_name *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  ram_disk_id : string prop option; [@option]  (** ram_disk_id *)
  security_group_names : string prop list option; [@option]
      (** security_group_names *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  update_default_version : bool prop option; [@option]
      (** update_default_version *)
  user_data : string prop option; [@option]  (** user_data *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  block_device_mappings : block_device_mappings list;
  capacity_reservation_specification :
    capacity_reservation_specification list;
  cpu_options : cpu_options list;
  credit_specification : credit_specification list;
  elastic_gpu_specifications : elastic_gpu_specifications list;
  elastic_inference_accelerator : elastic_inference_accelerator list;
  enclave_options : enclave_options list;
  hibernation_options : hibernation_options list;
  iam_instance_profile : iam_instance_profile list;
  instance_market_options : instance_market_options list;
  instance_requirements : instance_requirements list;
  license_specification : license_specification list;
  maintenance_options : maintenance_options list;
  metadata_options : metadata_options list;
  monitoring : monitoring list;
  network_interfaces : network_interfaces list;
  placement : placement list;
  private_dns_name_options : private_dns_name_options list;
  tag_specifications : tag_specifications list;
}
[@@deriving yojson_of]
(** aws_launch_template *)

let block_device_mappings__ebs ?delete_on_termination ?encrypted
    ?iops ?kms_key_id ?snapshot_id ?throughput ?volume_size
    ?volume_type () : block_device_mappings__ebs =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let block_device_mappings ?device_name ?no_device ?virtual_name ~ebs
    () : block_device_mappings =
  { device_name; no_device; virtual_name; ebs }

let capacity_reservation_specification__capacity_reservation_target
    ?capacity_reservation_id ?capacity_reservation_resource_group_arn
    () :
    capacity_reservation_specification__capacity_reservation_target =
  {
    capacity_reservation_id;
    capacity_reservation_resource_group_arn;
  }

let capacity_reservation_specification
    ?capacity_reservation_preference ~capacity_reservation_target ()
    : capacity_reservation_specification =
  { capacity_reservation_preference; capacity_reservation_target }

let cpu_options ?amd_sev_snp ?core_count ?threads_per_core () :
    cpu_options =
  { amd_sev_snp; core_count; threads_per_core }

let credit_specification ?cpu_credits () : credit_specification =
  { cpu_credits }

let elastic_gpu_specifications ~type_ () : elastic_gpu_specifications
    =
  { type_ }

let elastic_inference_accelerator ~type_ () :
    elastic_inference_accelerator =
  { type_ }

let enclave_options ?enabled () : enclave_options = { enabled }

let hibernation_options ~configured () : hibernation_options =
  { configured }

let iam_instance_profile ?arn ?name () : iam_instance_profile =
  { arn; name }

let instance_market_options__spot_options ?block_duration_minutes
    ?instance_interruption_behavior ?max_price ?spot_instance_type
    ?valid_until () : instance_market_options__spot_options =
  {
    block_duration_minutes;
    instance_interruption_behavior;
    max_price;
    spot_instance_type;
    valid_until;
  }

let instance_market_options ?market_type ~spot_options () :
    instance_market_options =
  { market_type; spot_options }

let instance_requirements__accelerator_count ?max ?min () :
    instance_requirements__accelerator_count =
  { max; min }

let instance_requirements__accelerator_total_memory_mib ?max ?min ()
    : instance_requirements__accelerator_total_memory_mib =
  { max; min }

let instance_requirements__baseline_ebs_bandwidth_mbps ?max ?min () :
    instance_requirements__baseline_ebs_bandwidth_mbps =
  { max; min }

let instance_requirements__memory_gib_per_vcpu ?max ?min () :
    instance_requirements__memory_gib_per_vcpu =
  { max; min }

let instance_requirements__memory_mib ?max ~min () :
    instance_requirements__memory_mib =
  { max; min }

let instance_requirements__network_bandwidth_gbps ?max ?min () :
    instance_requirements__network_bandwidth_gbps =
  { max; min }

let instance_requirements__network_interface_count ?max ?min () :
    instance_requirements__network_interface_count =
  { max; min }

let instance_requirements__total_local_storage_gb ?max ?min () :
    instance_requirements__total_local_storage_gb =
  { max; min }

let instance_requirements__vcpu_count ?max ~min () :
    instance_requirements__vcpu_count =
  { max; min }

let instance_requirements ?accelerator_manufacturers
    ?accelerator_names ?accelerator_types ?allowed_instance_types
    ?bare_metal ?burstable_performance ?cpu_manufacturers
    ?excluded_instance_types ?instance_generations ?local_storage
    ?local_storage_types
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price ~accelerator_count
    ~accelerator_total_memory_mib ~baseline_ebs_bandwidth_mbps
    ~memory_gib_per_vcpu ~memory_mib ~network_bandwidth_gbps
    ~network_interface_count ~total_local_storage_gb ~vcpu_count () :
    instance_requirements =
  {
    accelerator_manufacturers;
    accelerator_names;
    accelerator_types;
    allowed_instance_types;
    bare_metal;
    burstable_performance;
    cpu_manufacturers;
    excluded_instance_types;
    instance_generations;
    local_storage;
    local_storage_types;
    on_demand_max_price_percentage_over_lowest_price;
    require_hibernate_support;
    spot_max_price_percentage_over_lowest_price;
    accelerator_count;
    accelerator_total_memory_mib;
    baseline_ebs_bandwidth_mbps;
    memory_gib_per_vcpu;
    memory_mib;
    network_bandwidth_gbps;
    network_interface_count;
    total_local_storage_gb;
    vcpu_count;
  }

let license_specification ~license_configuration_arn () :
    license_specification =
  { license_configuration_arn }

let maintenance_options ?auto_recovery () : maintenance_options =
  { auto_recovery }

let metadata_options ?http_endpoint ?http_protocol_ipv6
    ?http_put_response_hop_limit ?http_tokens ?instance_metadata_tags
    () : metadata_options =
  {
    http_endpoint;
    http_protocol_ipv6;
    http_put_response_hop_limit;
    http_tokens;
    instance_metadata_tags;
  }

let monitoring ?enabled () : monitoring = { enabled }

let network_interfaces ?associate_carrier_ip_address
    ?associate_public_ip_address ?delete_on_termination ?description
    ?device_index ?interface_type ?ipv4_address_count ?ipv4_addresses
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_addresses ?ipv6_prefix_count ?ipv6_prefixes
    ?network_card_index ?network_interface_id ?private_ip_address
    ?security_groups ?subnet_id () : network_interfaces =
  {
    associate_carrier_ip_address;
    associate_public_ip_address;
    delete_on_termination;
    description;
    device_index;
    interface_type;
    ipv4_address_count;
    ipv4_addresses;
    ipv4_prefix_count;
    ipv4_prefixes;
    ipv6_address_count;
    ipv6_addresses;
    ipv6_prefix_count;
    ipv6_prefixes;
    network_card_index;
    network_interface_id;
    private_ip_address;
    security_groups;
    subnet_id;
  }

let placement ?affinity ?availability_zone ?group_name ?host_id
    ?host_resource_group_arn ?partition_number ?spread_domain
    ?tenancy () : placement =
  {
    affinity;
    availability_zone;
    group_name;
    host_id;
    host_resource_group_arn;
    partition_number;
    spread_domain;
    tenancy;
  }

let private_dns_name_options ?enable_resource_name_dns_a_record
    ?enable_resource_name_dns_aaaa_record ?hostname_type () :
    private_dns_name_options =
  {
    enable_resource_name_dns_a_record;
    enable_resource_name_dns_aaaa_record;
    hostname_type;
  }

let tag_specifications ?resource_type ?tags () : tag_specifications =
  { resource_type; tags }

let aws_launch_template ?default_version ?description
    ?disable_api_stop ?disable_api_termination ?ebs_optimized ?id
    ?image_id ?instance_initiated_shutdown_behavior ?instance_type
    ?kernel_id ?key_name ?name ?name_prefix ?ram_disk_id
    ?security_group_names ?tags ?tags_all ?update_default_version
    ?user_data ?vpc_security_group_ids ~block_device_mappings
    ~capacity_reservation_specification ~cpu_options
    ~credit_specification ~elastic_gpu_specifications
    ~elastic_inference_accelerator ~enclave_options
    ~hibernation_options ~iam_instance_profile
    ~instance_market_options ~instance_requirements
    ~license_specification ~maintenance_options ~metadata_options
    ~monitoring ~network_interfaces ~placement
    ~private_dns_name_options ~tag_specifications () :
    aws_launch_template =
  {
    default_version;
    description;
    disable_api_stop;
    disable_api_termination;
    ebs_optimized;
    id;
    image_id;
    instance_initiated_shutdown_behavior;
    instance_type;
    kernel_id;
    key_name;
    name;
    name_prefix;
    ram_disk_id;
    security_group_names;
    tags;
    tags_all;
    update_default_version;
    user_data;
    vpc_security_group_ids;
    block_device_mappings;
    capacity_reservation_specification;
    cpu_options;
    credit_specification;
    elastic_gpu_specifications;
    elastic_inference_accelerator;
    enclave_options;
    hibernation_options;
    iam_instance_profile;
    instance_market_options;
    instance_requirements;
    license_specification;
    maintenance_options;
    metadata_options;
    monitoring;
    network_interfaces;
    placement;
    private_dns_name_options;
    tag_specifications;
  }

type t = {
  arn : string prop;
  default_version : float prop;
  description : string prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : string prop;
  id : string prop;
  image_id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_type : string prop;
  kernel_id : string prop;
  key_name : string prop;
  latest_version : float prop;
  name : string prop;
  name_prefix : string prop;
  ram_disk_id : string prop;
  security_group_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_default_version : bool prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

let register ?tf_module ?default_version ?description
    ?disable_api_stop ?disable_api_termination ?ebs_optimized ?id
    ?image_id ?instance_initiated_shutdown_behavior ?instance_type
    ?kernel_id ?key_name ?name ?name_prefix ?ram_disk_id
    ?security_group_names ?tags ?tags_all ?update_default_version
    ?user_data ?vpc_security_group_ids ~block_device_mappings
    ~capacity_reservation_specification ~cpu_options
    ~credit_specification ~elastic_gpu_specifications
    ~elastic_inference_accelerator ~enclave_options
    ~hibernation_options ~iam_instance_profile
    ~instance_market_options ~instance_requirements
    ~license_specification ~maintenance_options ~metadata_options
    ~monitoring ~network_interfaces ~placement
    ~private_dns_name_options ~tag_specifications __resource_id =
  let __resource_type = "aws_launch_template" in
  let __resource =
    aws_launch_template ?default_version ?description
      ?disable_api_stop ?disable_api_termination ?ebs_optimized ?id
      ?image_id ?instance_initiated_shutdown_behavior ?instance_type
      ?kernel_id ?key_name ?name ?name_prefix ?ram_disk_id
      ?security_group_names ?tags ?tags_all ?update_default_version
      ?user_data ?vpc_security_group_ids ~block_device_mappings
      ~capacity_reservation_specification ~cpu_options
      ~credit_specification ~elastic_gpu_specifications
      ~elastic_inference_accelerator ~enclave_options
      ~hibernation_options ~iam_instance_profile
      ~instance_market_options ~instance_requirements
      ~license_specification ~maintenance_options ~metadata_options
      ~monitoring ~network_interfaces ~placement
      ~private_dns_name_options ~tag_specifications ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_launch_template __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_version =
         Prop.computed __resource_type __resource_id
           "default_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       disable_api_stop =
         Prop.computed __resource_type __resource_id
           "disable_api_stop";
       disable_api_termination =
         Prop.computed __resource_type __resource_id
           "disable_api_termination";
       ebs_optimized =
         Prop.computed __resource_type __resource_id "ebs_optimized";
       id = Prop.computed __resource_type __resource_id "id";
       image_id =
         Prop.computed __resource_type __resource_id "image_id";
       instance_initiated_shutdown_behavior =
         Prop.computed __resource_type __resource_id
           "instance_initiated_shutdown_behavior";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       kernel_id =
         Prop.computed __resource_type __resource_id "kernel_id";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       latest_version =
         Prop.computed __resource_type __resource_id "latest_version";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       ram_disk_id =
         Prop.computed __resource_type __resource_id "ram_disk_id";
       security_group_names =
         Prop.computed __resource_type __resource_id
           "security_group_names";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_default_version =
         Prop.computed __resource_type __resource_id
           "update_default_version";
       user_data =
         Prop.computed __resource_type __resource_id "user_data";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
     }
      : t)
  in
  __resource_attributes
