(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fpgas = {
  count : float prop;  (** count *)
  manufacturer : string prop;  (** manufacturer *)
  memory_size : float prop;  (** memory_size *)
  name : string prop;  (** name *)
}

type gpus = {
  count : float prop;  (** count *)
  manufacturer : string prop;  (** manufacturer *)
  memory_size : float prop;  (** memory_size *)
  name : string prop;  (** name *)
}

type inference_accelerators = {
  count : float prop;  (** count *)
  manufacturer : string prop;  (** manufacturer *)
  name : string prop;  (** name *)
}

type instance_disks = {
  count : float prop;  (** count *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_instance_type

val aws_ec2_instance_type :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  unit ->
  aws_ec2_instance_type

val yojson_of_aws_ec2_instance_type : aws_ec2_instance_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_recovery_supported : bool prop;
  bare_metal : bool prop;
  burstable_performance_supported : bool prop;
  current_generation : bool prop;
  dedicated_hosts_supported : bool prop;
  default_cores : float prop;
  default_threads_per_core : float prop;
  default_vcpus : float prop;
  ebs_encryption_support : string prop;
  ebs_nvme_support : string prop;
  ebs_optimized_support : string prop;
  ebs_performance_baseline_bandwidth : float prop;
  ebs_performance_baseline_iops : float prop;
  ebs_performance_baseline_throughput : float prop;
  ebs_performance_maximum_bandwidth : float prop;
  ebs_performance_maximum_iops : float prop;
  ebs_performance_maximum_throughput : float prop;
  efa_supported : bool prop;
  ena_support : string prop;
  encryption_in_transit_supported : bool prop;
  fpgas : fpgas list prop;
  free_tier_eligible : bool prop;
  gpus : gpus list prop;
  hibernation_supported : bool prop;
  hypervisor : string prop;
  id : string prop;
  inference_accelerators : inference_accelerators list prop;
  instance_disks : instance_disks list prop;
  instance_storage_supported : bool prop;
  instance_type : string prop;
  ipv6_supported : bool prop;
  maximum_ipv4_addresses_per_interface : float prop;
  maximum_ipv6_addresses_per_interface : float prop;
  maximum_network_cards : float prop;
  maximum_network_interfaces : float prop;
  memory_size : float prop;
  network_performance : string prop;
  supported_architectures : string list prop;
  supported_placement_strategies : string list prop;
  supported_root_device_types : string list prop;
  supported_usages_classes : string list prop;
  supported_virtualization_types : string list prop;
  sustained_clock_speed : float prop;
  total_fpga_memory : float prop;
  total_gpu_memory : float prop;
  total_instance_storage : float prop;
  valid_cores : float list prop;
  valid_threads_per_core : float list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_type:string prop ->
  string ->
  t Tf_core.resource
