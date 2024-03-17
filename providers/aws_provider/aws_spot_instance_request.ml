(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string option; [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target *)

type aws_spot_instance_request__capacity_reservation_specification = {
  capacity_reservation_preference : string option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** aws_spot_instance_request__capacity_reservation_specification *)

type aws_spot_instance_request__cpu_options = {
  amd_sev_snp : string option; [@option]  (** amd_sev_snp *)
  core_count : float option; [@option]  (** core_count *)
  threads_per_core : float option; [@option]  (** threads_per_core *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__cpu_options *)

type aws_spot_instance_request__credit_specification = {
  cpu_credits : string option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__credit_specification *)

type aws_spot_instance_request__ebs_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  throughput : float option; [@option]  (** throughput *)
  volume_id : string;  (** volume_id *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__ebs_block_device *)

type aws_spot_instance_request__enclave_options = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__enclave_options *)

type aws_spot_instance_request__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  no_device : bool option; [@option]  (** no_device *)
  virtual_name : string option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__ephemeral_block_device *)

type aws_spot_instance_request__launch_template = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__launch_template *)

type aws_spot_instance_request__maintenance_options = {
  auto_recovery : string option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__maintenance_options *)

type aws_spot_instance_request__metadata_options = {
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
(** aws_spot_instance_request__metadata_options *)

type aws_spot_instance_request__network_interface = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_index : float;  (** device_index *)
  network_card_index : float option; [@option]
      (** network_card_index *)
  network_interface_id : string;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__network_interface *)

type aws_spot_instance_request__private_dns_name_options = {
  enable_resource_name_dns_a_record : bool option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__private_dns_name_options *)

type aws_spot_instance_request__root_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  throughput : float option; [@option]  (** throughput *)
  volume_id : string;  (** volume_id *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__root_block_device *)

type aws_spot_instance_request__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__timeouts *)

type aws_spot_instance_request = {
  ami : string option; [@option]  (** ami *)
  associate_public_ip_address : bool option; [@option]
      (** associate_public_ip_address *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  block_duration_minutes : float option; [@option]
      (** block_duration_minutes *)
  cpu_core_count : float option; [@option]  (** cpu_core_count *)
  cpu_threads_per_core : float option; [@option]
      (** cpu_threads_per_core *)
  disable_api_stop : bool option; [@option]  (** disable_api_stop *)
  disable_api_termination : bool option; [@option]
      (** disable_api_termination *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  get_password_data : bool option; [@option]
      (** get_password_data *)
  hibernation : bool option; [@option]  (** hibernation *)
  host_id : string option; [@option]  (** host_id *)
  host_resource_group_arn : string option; [@option]
      (** host_resource_group_arn *)
  iam_instance_profile : string option; [@option]
      (** iam_instance_profile *)
  id : string option; [@option]  (** id *)
  instance_initiated_shutdown_behavior : string option; [@option]
      (** instance_initiated_shutdown_behavior *)
  instance_interruption_behavior : string option; [@option]
      (** instance_interruption_behavior *)
  instance_type : string option; [@option]  (** instance_type *)
  ipv6_address_count : float option; [@option]
      (** ipv6_address_count *)
  ipv6_addresses : string list option; [@option]
      (** ipv6_addresses *)
  key_name : string option; [@option]  (** key_name *)
  launch_group : string option; [@option]  (** launch_group *)
  monitoring : bool option; [@option]  (** monitoring *)
  placement_group : string option; [@option]  (** placement_group *)
  placement_partition_number : float option; [@option]
      (** placement_partition_number *)
  private_ip : string option; [@option]  (** private_ip *)
  secondary_private_ips : string list option; [@option]
      (** secondary_private_ips *)
  security_groups : string list option; [@option]
      (** security_groups *)
  source_dest_check : bool option; [@option]
      (** source_dest_check *)
  spot_price : string option; [@option]  (** spot_price *)
  spot_type : string option; [@option]  (** spot_type *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tenancy : string option; [@option]  (** tenancy *)
  user_data : string option; [@option]  (** user_data *)
  user_data_base64 : string option; [@option]
      (** user_data_base64 *)
  user_data_replace_on_change : bool option; [@option]
      (** user_data_replace_on_change *)
  valid_from : string option; [@option]  (** valid_from *)
  valid_until : string option; [@option]  (** valid_until *)
  volume_tags : (string * string) list option; [@option]
      (** volume_tags *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  wait_for_fulfillment : bool option; [@option]
      (** wait_for_fulfillment *)
  capacity_reservation_specification :
    aws_spot_instance_request__capacity_reservation_specification
    list;
  cpu_options : aws_spot_instance_request__cpu_options list;
  credit_specification :
    aws_spot_instance_request__credit_specification list;
  ebs_block_device :
    aws_spot_instance_request__ebs_block_device list;
  enclave_options : aws_spot_instance_request__enclave_options list;
  ephemeral_block_device :
    aws_spot_instance_request__ephemeral_block_device list;
  launch_template : aws_spot_instance_request__launch_template list;
  maintenance_options :
    aws_spot_instance_request__maintenance_options list;
  metadata_options :
    aws_spot_instance_request__metadata_options list;
  network_interface :
    aws_spot_instance_request__network_interface list;
  private_dns_name_options :
    aws_spot_instance_request__private_dns_name_options list;
  root_block_device :
    aws_spot_instance_request__root_block_device list;
  timeouts : aws_spot_instance_request__timeouts option;
}
[@@deriving yojson_of]
(** aws_spot_instance_request *)

let aws_spot_instance_request ?ami ?associate_public_ip_address
    ?availability_zone ?block_duration_minutes ?cpu_core_count
    ?cpu_threads_per_core ?disable_api_stop ?disable_api_termination
    ?ebs_optimized ?get_password_data ?hibernation ?host_id
    ?host_resource_group_arn ?iam_instance_profile ?id
    ?instance_initiated_shutdown_behavior
    ?instance_interruption_behavior ?instance_type
    ?ipv6_address_count ?ipv6_addresses ?key_name ?launch_group
    ?monitoring ?placement_group ?placement_partition_number
    ?private_ip ?secondary_private_ips ?security_groups
    ?source_dest_check ?spot_price ?spot_type ?subnet_id ?tags
    ?tags_all ?tenancy ?user_data ?user_data_base64
    ?user_data_replace_on_change ?valid_from ?valid_until
    ?volume_tags ?vpc_security_group_ids ?wait_for_fulfillment
    ?timeouts ~capacity_reservation_specification ~cpu_options
    ~credit_specification ~ebs_block_device ~enclave_options
    ~ephemeral_block_device ~launch_template ~maintenance_options
    ~metadata_options ~network_interface ~private_dns_name_options
    ~root_block_device __resource_id =
  let __resource_type = "aws_spot_instance_request" in
  let __resource =
    {
      ami;
      associate_public_ip_address;
      availability_zone;
      block_duration_minutes;
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
      instance_interruption_behavior;
      instance_type;
      ipv6_address_count;
      ipv6_addresses;
      key_name;
      launch_group;
      monitoring;
      placement_group;
      placement_partition_number;
      private_ip;
      secondary_private_ips;
      security_groups;
      source_dest_check;
      spot_price;
      spot_type;
      subnet_id;
      tags;
      tags_all;
      tenancy;
      user_data;
      user_data_base64;
      user_data_replace_on_change;
      valid_from;
      valid_until;
      volume_tags;
      vpc_security_group_ids;
      wait_for_fulfillment;
      capacity_reservation_specification;
      cpu_options;
      credit_specification;
      ebs_block_device;
      enclave_options;
      ephemeral_block_device;
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
    (yojson_of_aws_spot_instance_request __resource);
  ()
