(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop option; [@option]
      (** capacity_reservation_id *)
  capacity_reservation_resource_group_arn : string prop option;
      [@option]
      (** capacity_reservation_resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target *)

type aws_spot_instance_request__capacity_reservation_specification = {
  capacity_reservation_preference : string prop option; [@option]
      (** capacity_reservation_preference *)
  capacity_reservation_target :
    aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target
    list;
}
[@@deriving yojson_of]
(** aws_spot_instance_request__capacity_reservation_specification *)

type aws_spot_instance_request__cpu_options = {
  amd_sev_snp : string prop option; [@option]  (** amd_sev_snp *)
  core_count : float prop option; [@option]  (** core_count *)
  threads_per_core : float prop option; [@option]
      (** threads_per_core *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__cpu_options *)

type aws_spot_instance_request__credit_specification = {
  cpu_credits : string prop option; [@option]  (** cpu_credits *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__credit_specification *)

type aws_spot_instance_request__ebs_block_device = {
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
(** aws_spot_instance_request__ebs_block_device *)

type aws_spot_instance_request__enclave_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__enclave_options *)

type aws_spot_instance_request__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__ephemeral_block_device *)

type aws_spot_instance_request__launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__launch_template *)

type aws_spot_instance_request__maintenance_options = {
  auto_recovery : string prop option; [@option]  (** auto_recovery *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__maintenance_options *)

type aws_spot_instance_request__metadata_options = {
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
(** aws_spot_instance_request__metadata_options *)

type aws_spot_instance_request__network_interface = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_index : float prop;  (** device_index *)
  network_card_index : float prop option; [@option]
      (** network_card_index *)
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__network_interface *)

type aws_spot_instance_request__private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__private_dns_name_options *)

type aws_spot_instance_request__root_block_device = {
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
(** aws_spot_instance_request__root_block_device *)

type aws_spot_instance_request__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_spot_instance_request__timeouts *)

type aws_spot_instance_request = {
  ami : string prop option; [@option]  (** ami *)
  associate_public_ip_address : bool prop option; [@option]
      (** associate_public_ip_address *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
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
  instance_interruption_behavior : string prop option; [@option]
      (** instance_interruption_behavior *)
  instance_type : string prop option; [@option]  (** instance_type *)
  ipv6_address_count : float prop option; [@option]
      (** ipv6_address_count *)
  ipv6_addresses : string prop list option; [@option]
      (** ipv6_addresses *)
  key_name : string prop option; [@option]  (** key_name *)
  launch_group : string prop option; [@option]  (** launch_group *)
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
  spot_price : string prop option; [@option]  (** spot_price *)
  spot_type : string prop option; [@option]  (** spot_type *)
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
  valid_from : string prop option; [@option]  (** valid_from *)
  valid_until : string prop option; [@option]  (** valid_until *)
  volume_tags : (string * string prop) list option; [@option]
      (** volume_tags *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  wait_for_fulfillment : bool prop option; [@option]
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

type t = {
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
  block_duration_minutes : float prop;
  cpu_core_count : float prop;
  cpu_threads_per_core : float prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : bool prop;
  get_password_data : bool prop;
  hibernation : bool prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  iam_instance_profile : string prop;
  id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_interruption_behavior : string prop;
  instance_state : string prop;
  instance_type : string prop;
  ipv6_address_count : float prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
  launch_group : string prop;
  monitoring : bool prop;
  outpost_arn : string prop;
  password_data : string prop;
  placement_group : string prop;
  placement_partition_number : float prop;
  primary_network_interface_id : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  secondary_private_ips : string list prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  spot_bid_status : string prop;
  spot_instance_id : string prop;
  spot_price : string prop;
  spot_request_state : string prop;
  spot_type : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  user_data_replace_on_change : bool prop;
  valid_from : string prop;
  valid_until : string prop;
  volume_tags : (string * string) list prop;
  vpc_security_group_ids : string list prop;
  wait_for_fulfillment : bool prop;
}

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
    ({
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
      : aws_spot_instance_request)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_spot_instance_request __resource);
  let __resource_attributes =
    ({
       ami = Prop.computed __resource_type __resource_id "ami";
       arn = Prop.computed __resource_type __resource_id "arn";
       associate_public_ip_address =
         Prop.computed __resource_type __resource_id
           "associate_public_ip_address";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       block_duration_minutes =
         Prop.computed __resource_type __resource_id
           "block_duration_minutes";
       cpu_core_count =
         Prop.computed __resource_type __resource_id "cpu_core_count";
       cpu_threads_per_core =
         Prop.computed __resource_type __resource_id
           "cpu_threads_per_core";
       disable_api_stop =
         Prop.computed __resource_type __resource_id
           "disable_api_stop";
       disable_api_termination =
         Prop.computed __resource_type __resource_id
           "disable_api_termination";
       ebs_optimized =
         Prop.computed __resource_type __resource_id "ebs_optimized";
       get_password_data =
         Prop.computed __resource_type __resource_id
           "get_password_data";
       hibernation =
         Prop.computed __resource_type __resource_id "hibernation";
       host_id =
         Prop.computed __resource_type __resource_id "host_id";
       host_resource_group_arn =
         Prop.computed __resource_type __resource_id
           "host_resource_group_arn";
       iam_instance_profile =
         Prop.computed __resource_type __resource_id
           "iam_instance_profile";
       id = Prop.computed __resource_type __resource_id "id";
       instance_initiated_shutdown_behavior =
         Prop.computed __resource_type __resource_id
           "instance_initiated_shutdown_behavior";
       instance_interruption_behavior =
         Prop.computed __resource_type __resource_id
           "instance_interruption_behavior";
       instance_state =
         Prop.computed __resource_type __resource_id "instance_state";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       ipv6_address_count =
         Prop.computed __resource_type __resource_id
           "ipv6_address_count";
       ipv6_addresses =
         Prop.computed __resource_type __resource_id "ipv6_addresses";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       launch_group =
         Prop.computed __resource_type __resource_id "launch_group";
       monitoring =
         Prop.computed __resource_type __resource_id "monitoring";
       outpost_arn =
         Prop.computed __resource_type __resource_id "outpost_arn";
       password_data =
         Prop.computed __resource_type __resource_id "password_data";
       placement_group =
         Prop.computed __resource_type __resource_id
           "placement_group";
       placement_partition_number =
         Prop.computed __resource_type __resource_id
           "placement_partition_number";
       primary_network_interface_id =
         Prop.computed __resource_type __resource_id
           "primary_network_interface_id";
       private_dns =
         Prop.computed __resource_type __resource_id "private_dns";
       private_ip =
         Prop.computed __resource_type __resource_id "private_ip";
       public_dns =
         Prop.computed __resource_type __resource_id "public_dns";
       public_ip =
         Prop.computed __resource_type __resource_id "public_ip";
       secondary_private_ips =
         Prop.computed __resource_type __resource_id
           "secondary_private_ips";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       source_dest_check =
         Prop.computed __resource_type __resource_id
           "source_dest_check";
       spot_bid_status =
         Prop.computed __resource_type __resource_id
           "spot_bid_status";
       spot_instance_id =
         Prop.computed __resource_type __resource_id
           "spot_instance_id";
       spot_price =
         Prop.computed __resource_type __resource_id "spot_price";
       spot_request_state =
         Prop.computed __resource_type __resource_id
           "spot_request_state";
       spot_type =
         Prop.computed __resource_type __resource_id "spot_type";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tenancy =
         Prop.computed __resource_type __resource_id "tenancy";
       user_data =
         Prop.computed __resource_type __resource_id "user_data";
       user_data_base64 =
         Prop.computed __resource_type __resource_id
           "user_data_base64";
       user_data_replace_on_change =
         Prop.computed __resource_type __resource_id
           "user_data_replace_on_change";
       valid_from =
         Prop.computed __resource_type __resource_id "valid_from";
       valid_until =
         Prop.computed __resource_type __resource_id "valid_until";
       volume_tags =
         Prop.computed __resource_type __resource_id "volume_tags";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
       wait_for_fulfillment =
         Prop.computed __resource_type __resource_id
           "wait_for_fulfillment";
     }
      : t)
  in
  __resource_attributes
