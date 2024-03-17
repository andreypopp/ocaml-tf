(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_copy__ebs_block_device = {
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
(** aws_ami_copy__ebs_block_device *)

type aws_ami_copy__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  virtual_name : string;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami_copy__ephemeral_block_device *)

type aws_ami_copy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami_copy__timeouts *)

type aws_ami_copy = {
  deprecation_time : string option; [@option]
      (** deprecation_time *)
  description : string option; [@option]  (** description *)
  destination_outpost_arn : string option; [@option]
      (** destination_outpost_arn *)
  encrypted : bool option; [@option]  (** encrypted *)
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  source_ami_id : string;  (** source_ami_id *)
  source_ami_region : string;  (** source_ami_region *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
