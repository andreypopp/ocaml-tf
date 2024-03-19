(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type ebs_block_device = {
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
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** ebs_block_device *)

type enclave_options = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** enclave_options *)

type ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** ephemeral_block_device *)

type instance_market_options__spot_options = {
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

type launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** launch_template *)

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

type network_interface = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_index : float prop;  (** device_index *)
  network_card_index : float prop option; [@option]
      (** network_card_index *)
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** network_interface *)

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop option; [@option]
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop option; [@option]
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop option; [@option]  (** hostname_type *)
}
[@@deriving yojson_of]
(** private_dns_name_options *)

type root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** root_block_device *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
    capacity_reservation_specification list;
  cpu_options : cpu_options list;
  credit_specification : credit_specification list;
  ebs_block_device : ebs_block_device list;
  enclave_options : enclave_options list;
  ephemeral_block_device : ephemeral_block_device list;
  instance_market_options : instance_market_options list;
  launch_template : launch_template list;
  maintenance_options : maintenance_options list;
  metadata_options : metadata_options list;
  network_interface : network_interface list;
  private_dns_name_options : private_dns_name_options list;
  root_block_device : root_block_device list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_instance *)

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

let ebs_block_device ?delete_on_termination ?encrypted ?iops
    ?kms_key_id ?snapshot_id ?tags ?tags_all ?throughput ?volume_size
    ?volume_type ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    tags;
    tags_all;
    throughput;
    volume_size;
    volume_type;
  }

let enclave_options ?enabled () : enclave_options = { enabled }

let ephemeral_block_device ?no_device ?virtual_name ~device_name () :
    ephemeral_block_device =
  { device_name; no_device; virtual_name }

let instance_market_options__spot_options
    ?instance_interruption_behavior ?max_price ?spot_instance_type
    ?valid_until () : instance_market_options__spot_options =
  {
    instance_interruption_behavior;
    max_price;
    spot_instance_type;
    valid_until;
  }

let instance_market_options ?market_type ~spot_options () :
    instance_market_options =
  { market_type; spot_options }

let launch_template ?id ?name ?version () : launch_template =
  { id; name; version }

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

let network_interface ?delete_on_termination ?network_card_index
    ~device_index ~network_interface_id () : network_interface =
  {
    delete_on_termination;
    device_index;
    network_card_index;
    network_interface_id;
  }

let private_dns_name_options ?enable_resource_name_dns_a_record
    ?enable_resource_name_dns_aaaa_record ?hostname_type () :
    private_dns_name_options =
  {
    enable_resource_name_dns_a_record;
    enable_resource_name_dns_aaaa_record;
    hostname_type;
  }

let root_block_device ?delete_on_termination ?encrypted ?iops
    ?kms_key_id ?tags ?tags_all ?throughput ?volume_size ?volume_type
    () : root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    tags;
    tags_all;
    throughput;
    volume_size;
    volume_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

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
    ~private_dns_name_options ~root_block_device () : aws_instance =
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

type t = {
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
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
  instance_lifecycle : string prop;
  instance_state : string prop;
  instance_type : string prop;
  ipv6_address_count : float prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
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
  spot_instance_request_id : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  user_data_replace_on_change : bool prop;
  volume_tags : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let register ?tf_module ?ami ?associate_public_ip_address
    ?availability_zone ?cpu_core_count ?cpu_threads_per_core
    ?disable_api_stop ?disable_api_termination ?ebs_optimized
    ?get_password_data ?hibernation ?host_id ?host_resource_group_arn
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
    aws_instance ?ami ?associate_public_ip_address ?availability_zone
      ?cpu_core_count ?cpu_threads_per_core ?disable_api_stop
      ?disable_api_termination ?ebs_optimized ?get_password_data
      ?hibernation ?host_id ?host_resource_group_arn
      ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
      ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
      ?monitoring ?placement_group ?placement_partition_number
      ?private_ip ?secondary_private_ips ?security_groups
      ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy
      ?user_data ?user_data_base64 ?user_data_replace_on_change
      ?volume_tags ?vpc_security_group_ids ?timeouts
      ~capacity_reservation_specification ~cpu_options
      ~credit_specification ~ebs_block_device ~enclave_options
      ~ephemeral_block_device ~instance_market_options
      ~launch_template ~maintenance_options ~metadata_options
      ~network_interface ~private_dns_name_options ~root_block_device
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_instance __resource);
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
       instance_lifecycle =
         Prop.computed __resource_type __resource_id
           "instance_lifecycle";
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
       spot_instance_request_id =
         Prop.computed __resource_type __resource_id
           "spot_instance_request_id";
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
       volume_tags =
         Prop.computed __resource_type __resource_id "volume_tags";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
     }
      : t)
  in
  __resource_attributes
