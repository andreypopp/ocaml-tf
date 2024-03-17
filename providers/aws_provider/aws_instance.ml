(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_instance__capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string option; [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_instance__capacity_reservation_specification__capacity_reservation_target *)

type aws_instance__capacity_reservation_specification = {
  capacity_reservation_preference : string option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    aws_instance__capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** aws_instance__capacity_reservation_specification *)

type aws_instance__cpu_options = {
  amd_sev_snp : string option; [@option]  (** amd_sev_snp *)
  core_count : float option; [@option]  (** core_count *)
  threads_per_core : float option; [@option]  (** threads_per_core *)
}
[@@deriving yojson_of]
(** aws_instance__cpu_options *)

type aws_instance__credit_specification = {
  cpu_credits : string option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** aws_instance__credit_specification *)

type aws_instance__ebs_block_device = {
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
(** aws_instance__ebs_block_device *)

type aws_instance__enclave_options = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_instance__enclave_options *)

type aws_instance__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  no_device : bool option; [@option]  (** no_device *)
  virtual_name : string option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_instance__ephemeral_block_device *)

type aws_instance__instance_market_options__spot_options = {
  instance_interruption_behavior : string option; [@option]
      (** instance_interruption_behavior *)
  max_price : string option; [@option]  (** max_price *)
  spot_instance_type : string option; [@option]
      (** spot_instance_type *)
  valid_until : string option; [@option]  (** valid_until *)
}
[@@deriving yojson_of]
(** aws_instance__instance_market_options__spot_options *)

type aws_instance__instance_market_options = {
  market_type : string option; [@option]  (** market_type *)
  spot_options :
    aws_instance__instance_market_options__spot_options list;
}
[@@deriving yojson_of]
(** aws_instance__instance_market_options *)

type aws_instance__launch_template = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_instance__launch_template *)

type aws_instance__maintenance_options = {
  auto_recovery : string option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** aws_instance__maintenance_options *)

type aws_instance__metadata_options = {
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
(** aws_instance__metadata_options *)

type aws_instance__network_interface = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_index : float;  (** device_index *)
  network_card_index : float option; [@option]
      (** network_card_index *)
  network_interface_id : string;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_instance__network_interface *)

type aws_instance__private_dns_name_options = {
  enable_resource_name_dns_a_record : bool option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** aws_instance__private_dns_name_options *)

type aws_instance__root_block_device = {
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
(** aws_instance__root_block_device *)

type aws_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_instance__timeouts *)

type aws_instance = {
  get_password_data : bool option; [@option]
      (** get_password_data *)
  hibernation : bool option; [@option]  (** hibernation *)
  source_dest_check : bool option; [@option]
      (** source_dest_check *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_data_replace_on_change : bool option; [@option]
      (** user_data_replace_on_change *)
  volume_tags : (string * string) list option; [@option]
      (** volume_tags *)
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

let aws_instance ?get_password_data ?hibernation ?source_dest_check
    ?tags ?user_data_replace_on_change ?volume_tags ?timeouts
    ~capacity_reservation_specification ~cpu_options
    ~credit_specification ~ebs_block_device ~enclave_options
    ~ephemeral_block_device ~instance_market_options ~launch_template
    ~maintenance_options ~metadata_options ~network_interface
    ~private_dns_name_options ~root_block_device __resource_id =
  let __resource_type = "aws_instance" in
  let __resource =
    {
      get_password_data;
      hibernation;
      source_dest_check;
      tags;
      user_data_replace_on_change;
      volume_tags;
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
