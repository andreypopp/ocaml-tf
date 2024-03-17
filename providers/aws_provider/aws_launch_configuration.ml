(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_launch_configuration__ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  no_device : bool prop option; [@option]  (** no_device *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__ebs_block_device *)

type aws_launch_configuration__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop option; [@option]  (** no_device *)
  virtual_name : string prop option; [@option]  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__ephemeral_block_device *)

type aws_launch_configuration__metadata_options = {
  http_endpoint : string prop option; [@option]  (** http_endpoint *)
  http_put_response_hop_limit : float prop option; [@option]
      (** http_put_response_hop_limit *)
  http_tokens : string prop option; [@option]  (** http_tokens *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__metadata_options *)

type aws_launch_configuration__root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_launch_configuration__root_block_device *)

type aws_launch_configuration = {
  associate_public_ip_address : bool prop option; [@option]
      (** associate_public_ip_address *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  enable_monitoring : bool prop option; [@option]
      (** enable_monitoring *)
  iam_instance_profile : string prop option; [@option]
      (** iam_instance_profile *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop;  (** image_id *)
  instance_type : string prop;  (** instance_type *)
  key_name : string prop option; [@option]  (** key_name *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  placement_tenancy : string prop option; [@option]
      (** placement_tenancy *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  spot_price : string prop option; [@option]  (** spot_price *)
  user_data : string prop option; [@option]  (** user_data *)
  user_data_base64 : string prop option; [@option]
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

let aws_launch_configuration ?associate_public_ip_address
    ?ebs_optimized ?enable_monitoring ?iam_instance_profile ?id
    ?key_name ?name ?name_prefix ?placement_tenancy ?security_groups
    ?spot_price ?user_data ?user_data_base64 ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~metadata_options
    ~root_block_device __resource_id =
  let __resource_type = "aws_launch_configuration" in
  let __resource =
    {
      associate_public_ip_address;
      ebs_optimized;
      enable_monitoring;
      iam_instance_profile;
      id;
      image_id;
      instance_type;
      key_name;
      name;
      name_prefix;
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
