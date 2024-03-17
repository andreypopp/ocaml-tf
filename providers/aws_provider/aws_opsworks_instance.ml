(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_instance__ebs_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  iops : float option; [@option]  (** iops *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__ebs_block_device *)

type aws_opsworks_instance__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  virtual_name : string;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__ephemeral_block_device *)

type aws_opsworks_instance__root_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  iops : float option; [@option]  (** iops *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__root_block_device *)

type aws_opsworks_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opsworks_instance__timeouts *)

type aws_opsworks_instance = {
  agent_version : string option; [@option]  (** agent_version *)
  ami_id : string option; [@option]  (** ami_id *)
  architecture : string option; [@option]  (** architecture *)
  auto_scaling_type : string option; [@option]
      (** auto_scaling_type *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  created_at : string option; [@option]  (** created_at *)
  delete_ebs : bool option; [@option]  (** delete_ebs *)
  delete_eip : bool option; [@option]  (** delete_eip *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  ecs_cluster_arn : string option; [@option]  (** ecs_cluster_arn *)
  elastic_ip : string option; [@option]  (** elastic_ip *)
  hostname : string option; [@option]  (** hostname *)
  id : string option; [@option]  (** id *)
  infrastructure_class : string option; [@option]
      (** infrastructure_class *)
  install_updates_on_boot : bool option; [@option]
      (** install_updates_on_boot *)
  instance_profile_arn : string option; [@option]
      (** instance_profile_arn *)
  instance_type : string option; [@option]  (** instance_type *)
  layer_ids : string list;  (** layer_ids *)
  os : string option; [@option]  (** os *)
  root_device_type : string option; [@option]
      (** root_device_type *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  ssh_key_name : string option; [@option]  (** ssh_key_name *)
  stack_id : string;  (** stack_id *)
  state : string option; [@option]  (** state *)
  status : string option; [@option]  (** status *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tenancy : string option; [@option]  (** tenancy *)
  virtualization_type : string option; [@option]
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
