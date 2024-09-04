(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type block_device_mappings__ebs

val block_device_mappings__ebs :
  ?delete_on_termination:string prop ->
  ?encrypted:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  block_device_mappings__ebs

type block_device_mappings

val block_device_mappings :
  ?device_name:string prop ->
  ?no_device:string prop ->
  ?virtual_name:string prop ->
  ?ebs:block_device_mappings__ebs list ->
  unit ->
  block_device_mappings

type capacity_reservation_specification__capacity_reservation_target

val capacity_reservation_specification__capacity_reservation_target :
  ?capacity_reservation_id:string prop ->
  ?capacity_reservation_resource_group_arn:string prop ->
  unit ->
  capacity_reservation_specification__capacity_reservation_target

type capacity_reservation_specification

val capacity_reservation_specification :
  ?capacity_reservation_preference:string prop ->
  ?capacity_reservation_target:
    capacity_reservation_specification__capacity_reservation_target
    list ->
  unit ->
  capacity_reservation_specification

type cpu_options

val cpu_options :
  ?amd_sev_snp:string prop ->
  ?core_count:float prop ->
  ?threads_per_core:float prop ->
  unit ->
  cpu_options

type credit_specification

val credit_specification :
  ?cpu_credits:string prop -> unit -> credit_specification

type elastic_gpu_specifications

val elastic_gpu_specifications :
  type_:string prop -> unit -> elastic_gpu_specifications

type elastic_inference_accelerator

val elastic_inference_accelerator :
  type_:string prop -> unit -> elastic_inference_accelerator

type enclave_options

val enclave_options : ?enabled:bool prop -> unit -> enclave_options

type hibernation_options

val hibernation_options :
  configured:bool prop -> unit -> hibernation_options

type iam_instance_profile

val iam_instance_profile :
  ?arn:string prop ->
  ?name:string prop ->
  unit ->
  iam_instance_profile

type instance_market_options__spot_options

val instance_market_options__spot_options :
  ?block_duration_minutes:float prop ->
  ?instance_interruption_behavior:string prop ->
  ?max_price:string prop ->
  ?spot_instance_type:string prop ->
  ?valid_until:string prop ->
  unit ->
  instance_market_options__spot_options

type instance_market_options

val instance_market_options :
  ?market_type:string prop ->
  ?spot_options:instance_market_options__spot_options list ->
  unit ->
  instance_market_options

type instance_requirements__accelerator_count

val instance_requirements__accelerator_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__accelerator_count

type instance_requirements__accelerator_total_memory_mib

val instance_requirements__accelerator_total_memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__accelerator_total_memory_mib

type instance_requirements__baseline_ebs_bandwidth_mbps

val instance_requirements__baseline_ebs_bandwidth_mbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__baseline_ebs_bandwidth_mbps

type instance_requirements__memory_gib_per_vcpu

val instance_requirements__memory_gib_per_vcpu :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__memory_gib_per_vcpu

type instance_requirements__memory_mib

val instance_requirements__memory_mib :
  ?max:float prop ->
  min:float prop ->
  unit ->
  instance_requirements__memory_mib

type instance_requirements__network_bandwidth_gbps

val instance_requirements__network_bandwidth_gbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__network_bandwidth_gbps

type instance_requirements__network_interface_count

val instance_requirements__network_interface_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__network_interface_count

type instance_requirements__total_local_storage_gb

val instance_requirements__total_local_storage_gb :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  instance_requirements__total_local_storage_gb

type instance_requirements__vcpu_count

val instance_requirements__vcpu_count :
  ?max:float prop ->
  min:float prop ->
  unit ->
  instance_requirements__vcpu_count

type instance_requirements

val instance_requirements :
  ?accelerator_manufacturers:string prop list ->
  ?accelerator_names:string prop list ->
  ?accelerator_types:string prop list ->
  ?allowed_instance_types:string prop list ->
  ?bare_metal:string prop ->
  ?burstable_performance:string prop ->
  ?cpu_manufacturers:string prop list ->
  ?excluded_instance_types:string prop list ->
  ?instance_generations:string prop list ->
  ?local_storage:string prop ->
  ?local_storage_types:string prop list ->
  ?max_spot_price_as_percentage_of_optimal_on_demand_price:float prop ->
  ?on_demand_max_price_percentage_over_lowest_price:float prop ->
  ?require_hibernate_support:bool prop ->
  ?spot_max_price_percentage_over_lowest_price:float prop ->
  ?accelerator_count:instance_requirements__accelerator_count list ->
  ?accelerator_total_memory_mib:
    instance_requirements__accelerator_total_memory_mib list ->
  ?baseline_ebs_bandwidth_mbps:
    instance_requirements__baseline_ebs_bandwidth_mbps list ->
  ?memory_gib_per_vcpu:
    instance_requirements__memory_gib_per_vcpu list ->
  ?network_bandwidth_gbps:
    instance_requirements__network_bandwidth_gbps list ->
  ?network_interface_count:
    instance_requirements__network_interface_count list ->
  ?total_local_storage_gb:
    instance_requirements__total_local_storage_gb list ->
  memory_mib:instance_requirements__memory_mib list ->
  vcpu_count:instance_requirements__vcpu_count list ->
  unit ->
  instance_requirements

type license_specification

val license_specification :
  license_configuration_arn:string prop ->
  unit ->
  license_specification

type maintenance_options

val maintenance_options :
  ?auto_recovery:string prop -> unit -> maintenance_options

type metadata_options

val metadata_options :
  ?http_endpoint:string prop ->
  ?http_protocol_ipv6:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  ?instance_metadata_tags:string prop ->
  unit ->
  metadata_options

type monitoring

val monitoring : ?enabled:bool prop -> unit -> monitoring

type network_interfaces

val network_interfaces :
  ?associate_carrier_ip_address:string prop ->
  ?associate_public_ip_address:string prop ->
  ?delete_on_termination:string prop ->
  ?description:string prop ->
  ?device_index:float prop ->
  ?interface_type:string prop ->
  ?ipv4_address_count:float prop ->
  ?ipv4_addresses:string prop list ->
  ?ipv4_prefix_count:float prop ->
  ?ipv4_prefixes:string prop list ->
  ?ipv6_address_count:float prop ->
  ?ipv6_addresses:string prop list ->
  ?ipv6_prefix_count:float prop ->
  ?ipv6_prefixes:string prop list ->
  ?network_card_index:float prop ->
  ?network_interface_id:string prop ->
  ?primary_ipv6:string prop ->
  ?private_ip_address:string prop ->
  ?security_groups:string prop list ->
  ?subnet_id:string prop ->
  unit ->
  network_interfaces

type placement

val placement :
  ?affinity:string prop ->
  ?availability_zone:string prop ->
  ?group_name:string prop ->
  ?host_id:string prop ->
  ?host_resource_group_arn:string prop ->
  ?partition_number:float prop ->
  ?spread_domain:string prop ->
  ?tenancy:string prop ->
  unit ->
  placement

type private_dns_name_options

val private_dns_name_options :
  ?enable_resource_name_dns_a_record:bool prop ->
  ?enable_resource_name_dns_aaaa_record:bool prop ->
  ?hostname_type:string prop ->
  unit ->
  private_dns_name_options

type tag_specifications

val tag_specifications :
  ?resource_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  tag_specifications

type aws_launch_template

val aws_launch_template :
  ?default_version:float prop ->
  ?description:string prop ->
  ?disable_api_stop:bool prop ->
  ?disable_api_termination:bool prop ->
  ?ebs_optimized:string prop ->
  ?id:string prop ->
  ?image_id:string prop ->
  ?instance_initiated_shutdown_behavior:string prop ->
  ?instance_type:string prop ->
  ?kernel_id:string prop ->
  ?key_name:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?ram_disk_id:string prop ->
  ?security_group_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?update_default_version:bool prop ->
  ?user_data:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?block_device_mappings:block_device_mappings list ->
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?elastic_gpu_specifications:elastic_gpu_specifications list ->
  ?elastic_inference_accelerator:elastic_inference_accelerator list ->
  ?enclave_options:enclave_options list ->
  ?hibernation_options:hibernation_options list ->
  ?iam_instance_profile:iam_instance_profile list ->
  ?instance_market_options:instance_market_options list ->
  ?instance_requirements:instance_requirements list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?monitoring:monitoring list ->
  ?network_interfaces:network_interfaces list ->
  ?placement:placement list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?tag_specifications:tag_specifications list ->
  license_specification:license_specification list ->
  unit ->
  aws_launch_template

val yojson_of_aws_launch_template : aws_launch_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_default_version : bool prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_version:float prop ->
  ?description:string prop ->
  ?disable_api_stop:bool prop ->
  ?disable_api_termination:bool prop ->
  ?ebs_optimized:string prop ->
  ?id:string prop ->
  ?image_id:string prop ->
  ?instance_initiated_shutdown_behavior:string prop ->
  ?instance_type:string prop ->
  ?kernel_id:string prop ->
  ?key_name:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?ram_disk_id:string prop ->
  ?security_group_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?update_default_version:bool prop ->
  ?user_data:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?block_device_mappings:block_device_mappings list ->
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?elastic_gpu_specifications:elastic_gpu_specifications list ->
  ?elastic_inference_accelerator:elastic_inference_accelerator list ->
  ?enclave_options:enclave_options list ->
  ?hibernation_options:hibernation_options list ->
  ?iam_instance_profile:iam_instance_profile list ->
  ?instance_market_options:instance_market_options list ->
  ?instance_requirements:instance_requirements list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?monitoring:monitoring list ->
  ?network_interfaces:network_interfaces list ->
  ?placement:placement list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?tag_specifications:tag_specifications list ->
  license_specification:license_specification list ->
  string ->
  t

val make :
  ?default_version:float prop ->
  ?description:string prop ->
  ?disable_api_stop:bool prop ->
  ?disable_api_termination:bool prop ->
  ?ebs_optimized:string prop ->
  ?id:string prop ->
  ?image_id:string prop ->
  ?instance_initiated_shutdown_behavior:string prop ->
  ?instance_type:string prop ->
  ?kernel_id:string prop ->
  ?key_name:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?ram_disk_id:string prop ->
  ?security_group_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?update_default_version:bool prop ->
  ?user_data:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?block_device_mappings:block_device_mappings list ->
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?elastic_gpu_specifications:elastic_gpu_specifications list ->
  ?elastic_inference_accelerator:elastic_inference_accelerator list ->
  ?enclave_options:enclave_options list ->
  ?hibernation_options:hibernation_options list ->
  ?iam_instance_profile:iam_instance_profile list ->
  ?instance_market_options:instance_market_options list ->
  ?instance_requirements:instance_requirements list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?monitoring:monitoring list ->
  ?network_interfaces:network_interfaces list ->
  ?placement:placement list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?tag_specifications:tag_specifications list ->
  license_specification:license_specification list ->
  string ->
  t Tf_core.resource
