(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_device_fleet__output_config = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  s3_output_location : string;  (** s3_output_location *)
}
[@@deriving yojson_of]
(** aws_sagemaker_device_fleet__output_config *)

type aws_sagemaker_device_fleet = {
  description : string option; [@option]  (** description *)
  device_fleet_name : string;  (** device_fleet_name *)
  enable_iot_role_alias : bool option; [@option]
      (** enable_iot_role_alias *)
  id : string option; [@option]  (** id *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  output_config : aws_sagemaker_device_fleet__output_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device_fleet *)

let aws_sagemaker_device_fleet ?description ?enable_iot_role_alias
    ?id ?tags ?tags_all ~device_fleet_name ~role_arn ~output_config
    __resource_id =
  let __resource_type = "aws_sagemaker_device_fleet" in
  let __resource =
    {
      description;
      device_fleet_name;
      enable_iot_role_alias;
      id;
      role_arn;
      tags;
      tags_all;
      output_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_device_fleet __resource);
  ()
