(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type block_device_mappings__ebs = {
  delete_on_termination : string prop;  (** delete_on_termination *)
  encrypted : string prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  kms_key_id : string prop;  (** kms_key_id *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type block_device_mappings = {
  device_name : string prop;  (** device_name *)
  ebs : block_device_mappings__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ebs *)
  no_device : string prop;  (** no_device *)
  virtual_name : string prop;  (** virtual_name *)
}

type capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop;
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string prop;
      (** capacity_reservation_resource_group_arn *)
}

type capacity_reservation_specification = {
  capacity_reservation_preference : string prop;
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    capacity_reservation_specification__capacity_reservation_target
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** capacity_reservation_target *)
}

type cpu_options = {
  amd_sev_snp : string prop;  (** amd_sev_snp *)
  core_count : float prop;  (** core_count *)
  threads_per_core : float prop;  (** threads_per_core *)
}

type credit_specification = {
  cpu_credits : string prop;  (** cpu_credits *)
}

type elastic_gpu_specifications = {
  type_ : string prop; [@key "type"]  (** type *)
}

type elastic_inference_accelerator = {
  type_ : string prop; [@key "type"]  (** type *)
}

type enclave_options = { enabled : bool prop  (** enabled *) }

type hibernation_options = {
  configured : bool prop;  (** configured *)
}

type iam_instance_profile = {
  arn : string prop;  (** arn *)
  name : string prop;  (** name *)
}

type instance_market_options__spot_options = {
  block_duration_minutes : float prop;  (** block_duration_minutes *)
  instance_interruption_behavior : string prop;
      (** instance_interruption_behavior *)
  max_price : string prop;  (** max_price *)
  spot_instance_type : string prop;  (** spot_instance_type *)
  valid_until : string prop;  (** valid_until *)
}

type instance_market_options = {
  market_type : string prop;  (** market_type *)
  spot_options : instance_market_options__spot_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** spot_options *)
}

type instance_requirements__vcpu_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__total_local_storage_gb = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__network_interface_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__network_bandwidth_gbps = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__memory_mib = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__memory_gib_per_vcpu = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__accelerator_total_memory_mib = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements__accelerator_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type instance_requirements = {
  accelerator_count : instance_requirements__accelerator_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_count *)
  accelerator_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_manufacturers *)
  accelerator_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_names *)
  accelerator_total_memory_mib :
    instance_requirements__accelerator_total_memory_mib list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_total_memory_mib *)
  accelerator_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_types *)
  allowed_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_instance_types *)
  bare_metal : string prop;  (** bare_metal *)
  baseline_ebs_bandwidth_mbps :
    instance_requirements__baseline_ebs_bandwidth_mbps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** baseline_ebs_bandwidth_mbps *)
  burstable_performance : string prop;  (** burstable_performance *)
  cpu_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cpu_manufacturers *)
  excluded_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_instance_types *)
  instance_generations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_generations *)
  local_storage : string prop;  (** local_storage *)
  local_storage_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_storage_types *)
  max_spot_price_as_percentage_of_optimal_on_demand_price :
    float prop;
      (** max_spot_price_as_percentage_of_optimal_on_demand_price *)
  memory_gib_per_vcpu :
    instance_requirements__memory_gib_per_vcpu list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** memory_gib_per_vcpu *)
  memory_mib : instance_requirements__memory_mib list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** memory_mib *)
  network_bandwidth_gbps :
    instance_requirements__network_bandwidth_gbps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_bandwidth_gbps *)
  network_interface_count :
    instance_requirements__network_interface_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_interface_count *)
  on_demand_max_price_percentage_over_lowest_price : float prop;
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool prop;
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float prop;
      (** spot_max_price_percentage_over_lowest_price *)
  total_local_storage_gb :
    instance_requirements__total_local_storage_gb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** total_local_storage_gb *)
  vcpu_count : instance_requirements__vcpu_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vcpu_count *)
}

type license_specification = {
  license_configuration_arn : string prop;
      (** license_configuration_arn *)
}

type maintenance_options = {
  auto_recovery : string prop;  (** auto_recovery *)
}

type metadata_options = {
  http_endpoint : string prop;  (** http_endpoint *)
  http_protocol_ipv6 : string prop;  (** http_protocol_ipv6 *)
  http_put_response_hop_limit : float prop;
      (** http_put_response_hop_limit *)
  http_tokens : string prop;  (** http_tokens *)
  instance_metadata_tags : string prop;  (** instance_metadata_tags *)
}

type monitoring = { enabled : bool prop  (** enabled *) }

type network_interfaces = {
  associate_carrier_ip_address : string prop;
      (** associate_carrier_ip_address *)
  associate_public_ip_address : string prop;
      (** associate_public_ip_address *)
  delete_on_termination : string prop;  (** delete_on_termination *)
  description : string prop;  (** description *)
  device_index : float prop;  (** device_index *)
  interface_type : string prop;  (** interface_type *)
  ipv4_address_count : float prop;  (** ipv4_address_count *)
  ipv4_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv4_addresses *)
  ipv4_prefix_count : float prop;  (** ipv4_prefix_count *)
  ipv4_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv4_prefixes *)
  ipv6_address_count : float prop;  (** ipv6_address_count *)
  ipv6_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv6_addresses *)
  ipv6_prefix_count : float prop;  (** ipv6_prefix_count *)
  ipv6_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv6_prefixes *)
  network_card_index : float prop;  (** network_card_index *)
  network_interface_id : string prop;  (** network_interface_id *)
  primary_ipv6 : string prop;  (** primary_ipv6 *)
  private_ip_address : string prop;  (** private_ip_address *)
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_groups *)
  subnet_id : string prop;  (** subnet_id *)
}

type placement = {
  affinity : string prop;  (** affinity *)
  availability_zone : string prop;  (** availability_zone *)
  group_name : string prop;  (** group_name *)
  host_id : string prop;  (** host_id *)
  host_resource_group_arn : string prop;
      (** host_resource_group_arn *)
  partition_number : float prop;  (** partition_number *)
  spread_domain : string prop;  (** spread_domain *)
  tenancy : string prop;  (** tenancy *)
}

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop;
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop;
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop;  (** hostname_type *)
}

type tag_specifications = {
  resource_type : string prop;  (** resource_type *)
  tags : (string * string prop) list;  (** tags *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_launch_template

val aws_launch_template :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_launch_template

val yojson_of_aws_launch_template : aws_launch_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  block_device_mappings : block_device_mappings list prop;
  capacity_reservation_specification :
    capacity_reservation_specification list prop;
  cpu_options : cpu_options list prop;
  credit_specification : credit_specification list prop;
  default_version : float prop;
  description : string prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : string prop;
  elastic_gpu_specifications : elastic_gpu_specifications list prop;
  elastic_inference_accelerator :
    elastic_inference_accelerator list prop;
  enclave_options : enclave_options list prop;
  hibernation_options : hibernation_options list prop;
  iam_instance_profile : iam_instance_profile list prop;
  id : string prop;
  image_id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_market_options : instance_market_options list prop;
  instance_requirements : instance_requirements list prop;
  instance_type : string prop;
  kernel_id : string prop;
  key_name : string prop;
  latest_version : float prop;
  license_specification : license_specification list prop;
  maintenance_options : maintenance_options list prop;
  metadata_options : metadata_options list prop;
  monitoring : monitoring list prop;
  name : string prop;
  network_interfaces : network_interfaces list prop;
  placement : placement list prop;
  private_dns_name_options : private_dns_name_options list prop;
  ram_disk_id : string prop;
  security_group_names : string list prop;
  tag_specifications : tag_specifications list prop;
  tags : (string * string) list prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
