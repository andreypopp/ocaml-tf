(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  outpost_arn : string prop;  (** outpost_arn *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ebs_block_device *)

type aws_ami_from_instance__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ephemeral_block_device *)

type aws_ami_from_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__timeouts *)

type aws_ami_from_instance = {
  deprecation_time : string prop option; [@option]
      (** deprecation_time *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  snapshot_without_reboot : bool prop option; [@option]
      (** snapshot_without_reboot *)
  source_instance_id : string prop;  (** source_instance_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ebs_block_device : aws_ami_from_instance__ebs_block_device list;
  ephemeral_block_device :
    aws_ami_from_instance__ephemeral_block_device list;
  timeouts : aws_ami_from_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_ami_from_instance *)

let aws_ami_from_instance ?deprecation_time ?description ?id
    ?snapshot_without_reboot ?tags ?tags_all ?timeouts ~name
    ~source_instance_id ~ebs_block_device ~ephemeral_block_device
    __resource_id =
  let __resource_type = "aws_ami_from_instance" in
  let __resource =
    {
      deprecation_time;
      description;
      id;
      name;
      snapshot_without_reboot;
      source_instance_id;
      tags;
      tags_all;
      ebs_block_device;
      ephemeral_block_device;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_from_instance __resource);
  ()
