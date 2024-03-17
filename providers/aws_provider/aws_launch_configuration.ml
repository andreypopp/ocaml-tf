(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_launch_configuration__ebs_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  no_device : bool option; [@option]  (** no_device *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__ebs_block_device *)

type aws_launch_configuration__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  no_device : bool option; [@option]  (** no_device *)
  virtual_name : string option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__ephemeral_block_device *)

type aws_launch_configuration__metadata_options = {
  http_endpoint : string option; [@option]  (** http_endpoint *)
  http_put_response_hop_limit : float option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__metadata_options *)

type aws_launch_configuration__root_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__root_block_device *)

type aws_launch_configuration = {
  enable_monitoring : bool option; [@option]
      (** enable_monitoring *)
  iam_instance_profile : string option; [@option]
      (** iam_instance_profile *)
  image_id : string;  (** image_id *)
  instance_type : string;  (** instance_type *)
  placement_tenancy : string option; [@option]
      (** placement_tenancy *)
  security_groups : string list option; [@option]
      (** security_groups *)
  spot_price : string option; [@option]  (** spot_price *)
  user_data : string option; [@option]  (** user_data *)
  user_data_base64 : string option; [@option]
      (** user_data_base64 *)
  ebs_block_device : aws_launch_configuration__ebs_block_device list;
  ephemeral_block_device :
    aws_launch_configuration__ephemeral_block_device list;
  metadata_options : aws_launch_configuration__metadata_options list;
  root_block_device :
    aws_launch_configuration__root_block_device list;
}
[@@deriving yojson_of]
(** aws_launch_configuration *)

let aws_launch_configuration ?enable_monitoring ?iam_instance_profile
    ?placement_tenancy ?security_groups ?spot_price ?user_data
    ?user_data_base64 ~image_id ~instance_type ~ebs_block_device
    ~ephemeral_block_device ~metadata_options ~root_block_device
    __resource_id =
  let __resource_type = "aws_launch_configuration" in
  let __resource =
    {
      enable_monitoring;
      iam_instance_profile;
      image_id;
      instance_type;
      placement_tenancy;
      security_groups;
      spot_price;
      user_data;
      user_data_base64;
      ebs_block_device;
      ephemeral_block_device;
      metadata_options;
      root_block_device;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_launch_configuration __resource);
  ()
