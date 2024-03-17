(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_instance__ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  iops : float prop option; [@option]  (** iops *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__ebs_block_device *)

type aws_opsworks_instance__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__ephemeral_block_device *)

type aws_opsworks_instance__root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  iops : float prop option; [@option]  (** iops *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__root_block_device *)

type aws_opsworks_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__timeouts *)

type aws_opsworks_instance = {
  agent_version : string prop option; [@option]  (** agent_version *)
  ami_id : string prop option; [@option]  (** ami_id *)
  architecture : string prop option; [@option]  (** architecture *)
  auto_scaling_type : string prop option; [@option]
      (** auto_scaling_type *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  created_at : string prop option; [@option]  (** created_at *)
  delete_ebs : bool prop option; [@option]  (** delete_ebs *)
  delete_eip : bool prop option; [@option]  (** delete_eip *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  ecs_cluster_arn : string prop option; [@option]
      (** ecs_cluster_arn *)
  elastic_ip : string prop option; [@option]  (** elastic_ip *)
  hostname : string prop option; [@option]  (** hostname *)
  id : string prop option; [@option]  (** id *)
  infrastructure_class : string prop option; [@option]
      (** infrastructure_class *)
  install_updates_on_boot : bool prop option; [@option]
      (** install_updates_on_boot *)
  instance_profile_arn : string prop option; [@option]
      (** instance_profile_arn *)
  instance_type : string prop option; [@option]  (** instance_type *)
  layer_ids : string prop list;  (** layer_ids *)
  os : string prop option; [@option]  (** os *)
  root_device_type : string prop option; [@option]
      (** root_device_type *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  ssh_key_name : string prop option; [@option]  (** ssh_key_name *)
  stack_id : string prop;  (** stack_id *)
  state : string prop option; [@option]  (** state *)
  status : string prop option; [@option]  (** status *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tenancy : string prop option; [@option]  (** tenancy *)
  virtualization_type : string prop option; [@option]
      (** virtualization_type *)
  ebs_block_device : aws_opsworks_instance__ebs_block_device list;
  ephemeral_block_device :
    aws_opsworks_instance__ephemeral_block_device list;
  root_block_device : aws_opsworks_instance__root_block_device list;
  timeouts : aws_opsworks_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_opsworks_instance *)

type t = {
  agent_version : string prop;
  ami_id : string prop;
  architecture : string prop;
  auto_scaling_type : string prop;
  availability_zone : string prop;
  created_at : string prop;
  delete_ebs : bool prop;
  delete_eip : bool prop;
  ebs_optimized : bool prop;
  ec2_instance_id : string prop;
  ecs_cluster_arn : string prop;
  elastic_ip : string prop;
  hostname : string prop;
  id : string prop;
  infrastructure_class : string prop;
  install_updates_on_boot : bool prop;
  instance_profile_arn : string prop;
  instance_type : string prop;
  last_service_error_id : string prop;
  layer_ids : string list prop;
  os : string prop;
  platform : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  registered_by : string prop;
  reported_agent_version : string prop;
  reported_os_family : string prop;
  reported_os_name : string prop;
  reported_os_version : string prop;
  root_device_type : string prop;
  root_device_volume_id : string prop;
  security_group_ids : string list prop;
  ssh_host_dsa_key_fingerprint : string prop;
  ssh_host_rsa_key_fingerprint : string prop;
  ssh_key_name : string prop;
  stack_id : string prop;
  state : string prop;
  status : string prop;
  subnet_id : string prop;
  tenancy : string prop;
  virtualization_type : string prop;
}

let aws_opsworks_instance ?agent_version ?ami_id ?architecture
    ?auto_scaling_type ?availability_zone ?created_at ?delete_ebs
    ?delete_eip ?ebs_optimized ?ecs_cluster_arn ?elastic_ip ?hostname
    ?id ?infrastructure_class ?install_updates_on_boot
    ?instance_profile_arn ?instance_type ?os ?root_device_type
    ?security_group_ids ?ssh_key_name ?state ?status ?subnet_id
    ?tenancy ?virtualization_type ?timeouts ~layer_ids ~stack_id
    ~ebs_block_device ~ephemeral_block_device ~root_block_device
    __resource_id =
  let __resource_type = "aws_opsworks_instance" in
  let __resource =
    ({
       agent_version;
       ami_id;
       architecture;
       auto_scaling_type;
       availability_zone;
       created_at;
       delete_ebs;
       delete_eip;
       ebs_optimized;
       ecs_cluster_arn;
       elastic_ip;
       hostname;
       id;
       infrastructure_class;
       install_updates_on_boot;
       instance_profile_arn;
       instance_type;
       layer_ids;
       os;
       root_device_type;
       security_group_ids;
       ssh_key_name;
       stack_id;
       state;
       status;
       subnet_id;
       tenancy;
       virtualization_type;
       ebs_block_device;
       ephemeral_block_device;
       root_block_device;
       timeouts;
     }
      : aws_opsworks_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_instance __resource);
  let __resource_attributes =
    ({
       agent_version =
         Prop.computed __resource_type __resource_id "agent_version";
       ami_id = Prop.computed __resource_type __resource_id "ami_id";
       architecture =
         Prop.computed __resource_type __resource_id "architecture";
       auto_scaling_type =
         Prop.computed __resource_type __resource_id
           "auto_scaling_type";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       delete_ebs =
         Prop.computed __resource_type __resource_id "delete_ebs";
       delete_eip =
         Prop.computed __resource_type __resource_id "delete_eip";
       ebs_optimized =
         Prop.computed __resource_type __resource_id "ebs_optimized";
       ec2_instance_id =
         Prop.computed __resource_type __resource_id
           "ec2_instance_id";
       ecs_cluster_arn =
         Prop.computed __resource_type __resource_id
           "ecs_cluster_arn";
       elastic_ip =
         Prop.computed __resource_type __resource_id "elastic_ip";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_class =
         Prop.computed __resource_type __resource_id
           "infrastructure_class";
       install_updates_on_boot =
         Prop.computed __resource_type __resource_id
           "install_updates_on_boot";
       instance_profile_arn =
         Prop.computed __resource_type __resource_id
           "instance_profile_arn";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       last_service_error_id =
         Prop.computed __resource_type __resource_id
           "last_service_error_id";
       layer_ids =
         Prop.computed __resource_type __resource_id "layer_ids";
       os = Prop.computed __resource_type __resource_id "os";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       private_dns =
         Prop.computed __resource_type __resource_id "private_dns";
       private_ip =
         Prop.computed __resource_type __resource_id "private_ip";
       public_dns =
         Prop.computed __resource_type __resource_id "public_dns";
       public_ip =
         Prop.computed __resource_type __resource_id "public_ip";
       registered_by =
         Prop.computed __resource_type __resource_id "registered_by";
       reported_agent_version =
         Prop.computed __resource_type __resource_id
           "reported_agent_version";
       reported_os_family =
         Prop.computed __resource_type __resource_id
           "reported_os_family";
       reported_os_name =
         Prop.computed __resource_type __resource_id
           "reported_os_name";
       reported_os_version =
         Prop.computed __resource_type __resource_id
           "reported_os_version";
       root_device_type =
         Prop.computed __resource_type __resource_id
           "root_device_type";
       root_device_volume_id =
         Prop.computed __resource_type __resource_id
           "root_device_volume_id";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       ssh_host_dsa_key_fingerprint =
         Prop.computed __resource_type __resource_id
           "ssh_host_dsa_key_fingerprint";
       ssh_host_rsa_key_fingerprint =
         Prop.computed __resource_type __resource_id
           "ssh_host_rsa_key_fingerprint";
       ssh_key_name =
         Prop.computed __resource_type __resource_id "ssh_key_name";
       stack_id =
         Prop.computed __resource_type __resource_id "stack_id";
       state = Prop.computed __resource_type __resource_id "state";
       status = Prop.computed __resource_type __resource_id "status";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tenancy =
         Prop.computed __resource_type __resource_id "tenancy";
       virtualization_type =
         Prop.computed __resource_type __resource_id
           "virtualization_type";
     }
      : t)
  in
  __resource_attributes
