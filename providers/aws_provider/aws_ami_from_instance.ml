(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device = {
  delete_on_termination : bool;  (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool;  (** encrypted *)
  iops : float;  (** iops *)
  outpost_arn : string;  (** outpost_arn *)
  snapshot_id : string;  (** snapshot_id *)
  throughput : float;  (** throughput *)
  volume_size : float;  (** volume_size *)
  volume_type : string;  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ebs_block_device *)

type aws_ami_from_instance__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  virtual_name : string;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ephemeral_block_device *)

type aws_ami_from_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__timeouts *)

type aws_ami_from_instance = {
  deprecation_time : string option; [@option]
      (** deprecation_time *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  snapshot_without_reboot : bool option; [@option]
      (** snapshot_without_reboot *)
  source_instance_id : string;  (** source_instance_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  ebs_block_device : aws_ami_from_instance__ebs_block_device list;
  ephemeral_block_device :
    aws_ami_from_instance__ephemeral_block_device list;
  timeouts : aws_ami_from_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_ami_from_instance *)

let aws_ami_from_instance ?deprecation_time ?description
    ?snapshot_without_reboot ?tags ?timeouts ~name
    ~source_instance_id ~ebs_block_device ~ephemeral_block_device
    __resource_id =
  let __resource_type = "aws_ami_from_instance" in
  let __resource =
    {
      deprecation_time;
      description;
      name;
      snapshot_without_reboot;
      source_instance_id;
      tags;
      ebs_block_device;
      ephemeral_block_device;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_from_instance __resource);
  ()
