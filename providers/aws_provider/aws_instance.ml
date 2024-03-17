(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_instance__capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string prop option;
      [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_instance__capacity_reservation_specification__capacity_reservation_target *)

type aws_instance__capacity_reservation_specification = {
  capacity_reservation_preference : string prop option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    aws_instance__capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** aws_instance__capacity_reservation_specification *)

type aws_instance__cpu_options = {
  amd_sev_snp : string prop option; [@option]  (** amd_sev_snp *)
  core_count : float prop option; [@option]  (** core_count *)
  threads_per_core : float prop option; [@option]
      (** threads_per_core *)
}
[@@deriving yojson_of]
(** aws_instance__cpu_options *)

type aws_instance__credit_specification = {
  cpu_credits : string prop option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** aws_instance__credit_specification *)

type aws_instance__ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_id : string prop;  (** volume_id *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_instance__ebs_block_device *)

type aws_instance__enclave_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_instance__enclave_options *)

type aws_instance__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_instance__ephemeral_block_device *)

type aws_instance__instance_market_options__spot_options = {
  instance_interruption_behavior : string prop option; [@option]
      (** instance_interruption_behavior *)
  max_price : string prop option; [@option]  (** max_price *)
  spot_instance_type : string prop option; [@option]
      (** spot_instance_type *)
  valid_until : string prop option; [@option]  (** valid_until *)
}
[@@deriving yojson_of]
(** aws_instance__instance_market_options__spot_options *)

type aws_instance__instance_market_options = {
  market_type : string prop option; [@option]  (** market_type *)
  spot_options :
    aws_instance__instance_market_options__spot_options list;
}
[@@deriving yojson_of]
(** aws_instance__instance_market_options *)

type aws_instance__launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_instance__launch_template *)

type aws_instance__maintenance_options = {
  auto_recovery : string prop option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** aws_instance__maintenance_options *)

type aws_instance__metadata_options = {
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
(** aws_instance__metadata_options *)

type aws_instance__network_interface = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_index : float prop;  (** device_index *)
  network_card_index : float prop option; [@option]
      (** network_card_index *)
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_instance__network_interface *)

type aws_instance__private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** aws_instance__private_dns_name_options *)

type aws_instance__root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_id : string prop;  (** volume_id *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_instance__root_block_device *)

type aws_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_instance__timeouts *)

type aws_instance = {
  ami : string prop option; [@option]  (** ami *)
  associate_public_ip_address : bool prop option; [@option]
      (** associate_public_ip_address *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  cpu_core_count : float prop option; [@option]
      (** cpu_core_count *)
  cpu_threads_per_core : float prop option; [@option]
      (** cpu_threads_per_core *)
  disable_api_stop : bool prop option; [@option]
      (** disable_api_stop *)
  disable_api_termination : bool prop option; [@option]
      (** disable_api_termination *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  get_password_data : bool prop option; [@option]
      (** get_password_data *)
  hibernation : bool prop option; [@option]  (** hibernation *)
  host_id : string prop option; [@option]  (** host_id *)
  host_resource_group_arn : string prop option; [@option]
      (** host_resource_group_arn *)
  iam_instance_profile : string prop option; [@option]
      (** iam_instance_profile *)
  id : string prop option; [@option]  (** id *)
  instance_initiated_shutdown_behavior : string prop option;
      [@option]
      (** instance_initiated_shutdown_behavior *)
  instance_type : string prop option; [@option]  (** instance_type *)
  ipv6_address_count : float prop option; [@option]
      (** ipv6_address_count *)
  ipv6_addresses : string prop list option; [@option]
      (** ipv6_addresses *)
  key_name : string prop option; [@option]  (** key_name *)
  monitoring : bool prop option; [@option]  (** monitoring *)
  placement_group : string prop option; [@option]
      (** placement_group *)
  placement_partition_number : float prop option; [@option]
      (** placement_partition_number *)
  private_ip : string prop option; [@option]  (** private_ip *)
  secondary_private_ips : string prop list option; [@option]
      (** secondary_private_ips *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  source_dest_check : bool prop option; [@option]
      (** source_dest_check *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tenancy : string prop option; [@option]  (** tenancy *)
  user_data : string prop option; [@option]  (** user_data *)
  user_data_base64 : string prop option; [@option]
      (** user_data_base64 *)
  user_data_replace_on_change : bool prop option; [@option]
      (** user_data_replace_on_change *)
  volume_tags : (string * string prop) list option; [@option]
      (** volume_tags *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  capacity_reservation_specification :
    aws_instance__capacity_reservation_specification list;
  cpu_options : aws_instance__cpu_options list;
  credit_specification : aws_instance__credit_specification list;
  ebs_block_device : aws_instance__ebs_block_device list;
  enclave_options : aws_instance__enclave_options list;
  ephemeral_block_device : aws_instance__ephemeral_block_device list;
  instance_market_options :
    aws_instance__instance_market_options list;
  launch_template : aws_instance__launch_template list;
  maintenance_options : aws_instance__maintenance_options list;
  metadata_options : aws_instance__metadata_options list;
  network_interface : aws_instance__network_interface list;
  private_dns_name_options :
    aws_instance__private_dns_name_options list;
  root_block_device : aws_instance__root_block_device list;
  timeouts : aws_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_instance *)

let aws_instance ?ami ?associate_public_ip_address ?availability_zone
    ?cpu_core_count ?cpu_threads_per_core ?disable_api_stop
    ?disable_api_termination ?ebs_optimized ?get_password_data
    ?hibernation ?host_id ?host_resource_group_arn
    ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
    ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
    ?monitoring ?placement_group ?placement_partition_number
    ?private_ip ?secondary_private_ips ?security_groups
    ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy ?user_data
    ?user_data_base64 ?user_data_replace_on_change ?volume_tags
    ?vpc_security_group_ids ?timeouts
    ~capacity_reservation_specification ~cpu_options
    ~credit_specification ~ebs_block_device ~enclave_options
    ~ephemeral_block_device ~instance_market_options ~launch_template
    ~maintenance_options ~metadata_options ~network_interface
    ~private_dns_name_options ~root_block_device __resource_id =
  let __resource_type = "aws_instance" in
  let __resource =
    {
      ami;
      associate_public_ip_address;
      availability_zone;
      cpu_core_count;
      cpu_threads_per_core;
      disable_api_stop;
      disable_api_termination;
      ebs_optimized;
      get_password_data;
      hibernation;
      host_id;
      host_resource_group_arn;
      iam_instance_profile;
      id;
      instance_initiated_shutdown_behavior;
      instance_type;
      ipv6_address_count;
      ipv6_addresses;
      key_name;
      monitoring;
      placement_group;
      placement_partition_number;
      private_ip;
      secondary_private_ips;
      security_groups;
      source_dest_check;
      subnet_id;
      tags;
      tags_all;
      tenancy;
      user_data;
      user_data_base64;
      user_data_replace_on_change;
      volume_tags;
      vpc_security_group_ids;
      capacity_reservation_specification;
      cpu_options;
      credit_specification;
      ebs_block_device;
      enclave_options;
      ephemeral_block_device;
      instance_market_options;
      launch_template;
      maintenance_options;
      metadata_options;
      network_interface;
      private_dns_name_options;
      root_block_device;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_instance __resource);
  ()
