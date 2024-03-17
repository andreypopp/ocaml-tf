(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_launch_template__block_device_mappings__ebs = {
  delete_on_termination : string option; [@option]
      (** delete_on_termination *)
  encrypted : string option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_launch_template__block_device_mappings__ebs *)

type aws_launch_template__block_device_mappings = {
  device_name : string option; [@option]  (** device_name *)
  no_device : string option; [@option]  (** no_device *)
  virtual_name : string option; [@option]  (** virtual_name *)
  ebs : aws_launch_template__block_device_mappings__ebs list;
}
[@@deriving yojson_of]
(** aws_launch_template__block_device_mappings *)

type aws_launch_template__capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string option; [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_launch_template__capacity_reservation_specification__capacity_reservation_target *)

type aws_launch_template__capacity_reservation_specification = {
  capacity_reservation_preference : string option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    aws_launch_template__capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** aws_launch_template__capacity_reservation_specification *)

type aws_launch_template__cpu_options = {
  amd_sev_snp : string option; [@option]  (** amd_sev_snp *)
  core_count : float option; [@option]  (** core_count *)
  threads_per_core : float option; [@option]  (** threads_per_core *)
}
[@@deriving yojson_of]
(** aws_launch_template__cpu_options *)

type aws_launch_template__credit_specification = {
  cpu_credits : string option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** aws_launch_template__credit_specification *)

type aws_launch_template__elastic_gpu_specifications = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_launch_template__elastic_gpu_specifications *)

type aws_launch_template__elastic_inference_accelerator = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_launch_template__elastic_inference_accelerator *)

type aws_launch_template__enclave_options = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_launch_template__enclave_options *)

type aws_launch_template__hibernation_options = {
  configured : bool;  (** configured *)
}
[@@deriving yojson_of]
(** aws_launch_template__hibernation_options *)

type aws_launch_template__iam_instance_profile = {
  arn : string option; [@option]  (** arn *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_launch_template__iam_instance_profile *)

type aws_launch_template__instance_market_options__spot_options = {
  block_duration_minutes : float option; [@option]
      (** block_duration_minutes *)
  instance_interruption_behavior : string option; [@option]
      (** instance_interruption_behavior *)
  max_price : string option; [@option]  (** max_price *)
  spot_instance_type : string option; [@option]
      (** spot_instance_type *)
  valid_until : string option; [@option]  (** valid_until *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_market_options__spot_options *)

type aws_launch_template__instance_market_options = {
  market_type : string option; [@option]  (** market_type *)
  spot_options :
    aws_launch_template__instance_market_options__spot_options list;
}
[@@deriving yojson_of]
(** aws_launch_template__instance_market_options *)

type aws_launch_template__instance_requirements__accelerator_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__accelerator_count *)

type aws_launch_template__instance_requirements__accelerator_total_memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__accelerator_total_memory_mib *)

type aws_launch_template__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__baseline_ebs_bandwidth_mbps *)

type aws_launch_template__instance_requirements__memory_gib_per_vcpu = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__memory_gib_per_vcpu *)

type aws_launch_template__instance_requirements__memory_mib = {
  max : float option; [@option]  (** max *)
  min : float;  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__memory_mib *)

type aws_launch_template__instance_requirements__network_bandwidth_gbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__network_bandwidth_gbps *)

type aws_launch_template__instance_requirements__network_interface_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__network_interface_count *)

type aws_launch_template__instance_requirements__total_local_storage_gb = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__total_local_storage_gb *)

type aws_launch_template__instance_requirements__vcpu_count = {
  max : float option; [@option]  (** max *)
  min : float;  (** min *)
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements__vcpu_count *)

type aws_launch_template__instance_requirements = {
  accelerator_manufacturers : string list option; [@option]
      (** accelerator_manufacturers *)
  accelerator_names : string list option; [@option]
      (** accelerator_names *)
  accelerator_types : string list option; [@option]
      (** accelerator_types *)
  allowed_instance_types : string list option; [@option]
      (** allowed_instance_types *)
  bare_metal : string option; [@option]  (** bare_metal *)
  burstable_performance : string option; [@option]
      (** burstable_performance *)
  cpu_manufacturers : string list option; [@option]
      (** cpu_manufacturers *)
  excluded_instance_types : string list option; [@option]
      (** excluded_instance_types *)
  instance_generations : string list option; [@option]
      (** instance_generations *)
  local_storage : string option; [@option]  (** local_storage *)
  local_storage_types : string list option; [@option]
      (** local_storage_types *)
  on_demand_max_price_percentage_over_lowest_price : float option;
      [@option]
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool option; [@option]
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float option;
      [@option]
      (** spot_max_price_percentage_over_lowest_price *)
  accelerator_count :
    aws_launch_template__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    aws_launch_template__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    aws_launch_template__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    aws_launch_template__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    aws_launch_template__instance_requirements__memory_mib list;
  network_bandwidth_gbps :
    aws_launch_template__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    aws_launch_template__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    aws_launch_template__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    aws_launch_template__instance_requirements__vcpu_count list;
}
[@@deriving yojson_of]
(** aws_launch_template__instance_requirements *)

type aws_launch_template__license_specification = {
  license_configuration_arn : string;
      (** license_configuration_arn *)
}
[@@deriving yojson_of]
(** aws_launch_template__license_specification *)

type aws_launch_template__maintenance_options = {
  auto_recovery : string option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** aws_launch_template__maintenance_options *)

type aws_launch_template__metadata_options = {
  http_endpoint : string option; [@option]  (** http_endpoint *)
  http_protocol_ipv6 : string option; [@option]
      (** http_protocol_ipv6 *)
  http_put_response_hop_limit : float option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string option; [@option]  (** http_tokens *)
  instance_metadata_tags : string option; [@option]
      (** instance_metadata_tags *)
}
[@@deriving yojson_of]
(** aws_launch_template__metadata_options *)

type aws_launch_template__monitoring = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_launch_template__monitoring *)

type aws_launch_template__network_interfaces = {
  associate_carrier_ip_address : string option; [@option]
      (** associate_carrier_ip_address *)
  associate_public_ip_address : string option; [@option]
      (** associate_public_ip_address *)
  delete_on_termination : string option; [@option]
      (** delete_on_termination *)
  description : string option; [@option]  (** description *)
  device_index : float option; [@option]  (** device_index *)
  interface_type : string option; [@option]  (** interface_type *)
  ipv4_address_count : float option; [@option]
      (** ipv4_address_count *)
  ipv4_addresses : string list option; [@option]
      (** ipv4_addresses *)
  ipv4_prefix_count : float option; [@option]
      (** ipv4_prefix_count *)
  ipv4_prefixes : string list option; [@option]  (** ipv4_prefixes *)
  ipv6_address_count : float option; [@option]
      (** ipv6_address_count *)
  ipv6_addresses : string list option; [@option]
      (** ipv6_addresses *)
  ipv6_prefix_count : float option; [@option]
      (** ipv6_prefix_count *)
  ipv6_prefixes : string list option; [@option]  (** ipv6_prefixes *)
  network_card_index : float option; [@option]
      (** network_card_index *)
  network_interface_id : string option; [@option]
      (** network_interface_id *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_launch_template__network_interfaces *)

type aws_launch_template__placement = {
  affinity : string option; [@option]  (** affinity *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  group_name : string option; [@option]  (** group_name *)
  host_id : string option; [@option]  (** host_id *)
  host_resource_group_arn : string option; [@option]
      (** host_resource_group_arn *)
  partition_number : float option; [@option]  (** partition_number *)
  spread_domain : string option; [@option]  (** spread_domain *)
  tenancy : string option; [@option]  (** tenancy *)
}
[@@deriving yojson_of]
(** aws_launch_template__placement *)

type aws_launch_template__private_dns_name_options = {
  enable_resource_name_dns_a_record : bool option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** aws_launch_template__private_dns_name_options *)

type aws_launch_template__tag_specifications = {
  resource_type : string option; [@option]  (** resource_type *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_launch_template__tag_specifications *)

type aws_launch_template = {
  description : string option; [@option]  (** description *)
  disable_api_stop : bool option; [@option]  (** disable_api_stop *)
  disable_api_termination : bool option; [@option]
      (** disable_api_termination *)
  ebs_optimized : string option; [@option]  (** ebs_optimized *)
  image_id : string option; [@option]  (** image_id *)
  instance_initiated_shutdown_behavior : string option; [@option]
      (** instance_initiated_shutdown_behavior *)
  instance_type : string option; [@option]  (** instance_type *)
  kernel_id : string option; [@option]  (** kernel_id *)
  key_name : string option; [@option]  (** key_name *)
  ram_disk_id : string option; [@option]  (** ram_disk_id *)
  security_group_names : string list option; [@option]
      (** security_group_names *)
  tags : (string * string) list option; [@option]  (** tags *)
  update_default_version : bool option; [@option]
      (** update_default_version *)
  user_data : string option; [@option]  (** user_data *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  block_device_mappings :
    aws_launch_template__block_device_mappings list;
  capacity_reservation_specification :
    aws_launch_template__capacity_reservation_specification list;
  cpu_options : aws_launch_template__cpu_options list;
  credit_specification :
    aws_launch_template__credit_specification list;
  elastic_gpu_specifications :
    aws_launch_template__elastic_gpu_specifications list;
  elastic_inference_accelerator :
    aws_launch_template__elastic_inference_accelerator list;
  enclave_options : aws_launch_template__enclave_options list;
  hibernation_options :
    aws_launch_template__hibernation_options list;
  iam_instance_profile :
    aws_launch_template__iam_instance_profile list;
  instance_market_options :
    aws_launch_template__instance_market_options list;
  instance_requirements :
    aws_launch_template__instance_requirements list;
  license_specification :
    aws_launch_template__license_specification list;
  maintenance_options :
    aws_launch_template__maintenance_options list;
  metadata_options : aws_launch_template__metadata_options list;
  monitoring : aws_launch_template__monitoring list;
  network_interfaces : aws_launch_template__network_interfaces list;
  placement : aws_launch_template__placement list;
  private_dns_name_options :
    aws_launch_template__private_dns_name_options list;
  tag_specifications : aws_launch_template__tag_specifications list;
}
[@@deriving yojson_of]
(** aws_launch_template *)

let aws_launch_template ?description ?disable_api_stop
    ?disable_api_termination ?ebs_optimized ?image_id
    ?instance_initiated_shutdown_behavior ?instance_type ?kernel_id
    ?key_name ?ram_disk_id ?security_group_names ?tags
    ?update_default_version ?user_data ?vpc_security_group_ids
    ~block_device_mappings ~capacity_reservation_specification
    ~cpu_options ~credit_specification ~elastic_gpu_specifications
    ~elastic_inference_accelerator ~enclave_options
    ~hibernation_options ~iam_instance_profile
    ~instance_market_options ~instance_requirements
    ~license_specification ~maintenance_options ~metadata_options
    ~monitoring ~network_interfaces ~placement
    ~private_dns_name_options ~tag_specifications __resource_id =
  let __resource_type = "aws_launch_template" in
  let __resource =
    {
      description;
      disable_api_stop;
      disable_api_termination;
      ebs_optimized;
      image_id;
      instance_initiated_shutdown_behavior;
      instance_type;
      kernel_id;
      key_name;
      ram_disk_id;
      security_group_names;
      tags;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_launch_template __resource);
  ()
