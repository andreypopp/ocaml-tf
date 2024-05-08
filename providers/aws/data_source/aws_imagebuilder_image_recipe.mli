(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type block_device_mapping__ebs = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  kms_key_id : string prop;  (** kms_key_id *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type block_device_mapping = {
  device_name : string prop;  (** device_name *)
  ebs : block_device_mapping__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ebs *)
  no_device : string prop;  (** no_device *)
  virtual_name : string prop;  (** virtual_name *)
}

type component__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type component = {
  component_arn : string prop;  (** component_arn *)
  parameter : component__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** parameter *)
}

type aws_imagebuilder_image_recipe

val aws_imagebuilder_image_recipe :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_imagebuilder_image_recipe

val yojson_of_aws_imagebuilder_image_recipe :
  aws_imagebuilder_image_recipe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  block_device_mapping : block_device_mapping list prop;
  component : component list prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  tags : (string * string) list prop;
  user_data_base64 : string prop;
  version : string prop;
  working_directory : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
