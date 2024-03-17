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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_instance __resource);
  ()
