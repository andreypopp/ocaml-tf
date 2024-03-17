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
  architecture : string option; [@option]  (** architecture *)
  auto_scaling_type : string option; [@option]
      (** auto_scaling_type *)
  delete_ebs : bool option; [@option]  (** delete_ebs *)
  delete_eip : bool option; [@option]  (** delete_eip *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  install_updates_on_boot : bool option; [@option]
      (** install_updates_on_boot *)
  instance_type : string option; [@option]  (** instance_type *)
  layer_ids : string list;  (** layer_ids *)
  stack_id : string;  (** stack_id *)
  state : string option; [@option]  (** state *)
  ebs_block_device : aws_opsworks_instance__ebs_block_device list;
  ephemeral_block_device :
    aws_opsworks_instance__ephemeral_block_device list;
  root_block_device : aws_opsworks_instance__root_block_device list;
  timeouts : aws_opsworks_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_opsworks_instance *)

let aws_opsworks_instance ?agent_version ?architecture
    ?auto_scaling_type ?delete_ebs ?delete_eip ?ebs_optimized
    ?install_updates_on_boot ?instance_type ?state ?timeouts
    ~layer_ids ~stack_id ~ebs_block_device ~ephemeral_block_device
    ~root_block_device __resource_id =
  let __resource_type = "aws_opsworks_instance" in
  let __resource =
    {
      agent_version;
      architecture;
      auto_scaling_type;
      delete_ebs;
      delete_eip;
      ebs_optimized;
      install_updates_on_boot;
      instance_type;
      layer_ids;
      stack_id;
      state;
      ebs_block_device;
      ephemeral_block_device;
      root_block_device;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_instance __resource);
  ()
