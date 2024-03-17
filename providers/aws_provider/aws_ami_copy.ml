(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_copy__ebs_block_device = {
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
(** aws_ami_copy__ebs_block_device *)

type aws_ami_copy__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami_copy__ephemeral_block_device *)

type aws_ami_copy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami_copy__timeouts *)

type aws_ami_copy = {
  deprecation_time : string prop option; [@option]
      (** deprecation_time *)
  description : string prop option; [@option]  (** description *)
  destination_outpost_arn : string prop option; [@option]
      (** destination_outpost_arn *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  source_ami_id : string prop;  (** source_ami_id *)
  source_ami_region : string prop;  (** source_ami_region *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ebs_block_device : aws_ami_copy__ebs_block_device list;
  ephemeral_block_device : aws_ami_copy__ephemeral_block_device list;
  timeouts : aws_ami_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ami_copy *)

let aws_ami_copy ?deprecation_time ?description
    ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
    ?tags_all ?timeouts ~name ~source_ami_id ~source_ami_region
    ~ebs_block_device ~ephemeral_block_device __resource_id =
  let __resource_type = "aws_ami_copy" in
  let __resource =
    {
      deprecation_time;
      description;
      destination_outpost_arn;
      encrypted;
      id;
      kms_key_id;
      name;
      source_ami_id;
      source_ami_region;
      tags;
      tags_all;
      ebs_block_device;
      ephemeral_block_device;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_copy __resource);
  ()
