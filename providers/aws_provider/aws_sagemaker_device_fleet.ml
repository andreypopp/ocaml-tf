(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_device_fleet__output_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  s3_output_location : string prop;  (** s3_output_location *)
}
[@@deriving yojson_of]
(** aws_sagemaker_device_fleet__output_config *)

type aws_sagemaker_device_fleet = {
  description : string prop option; [@option]  (** description *)
  device_fleet_name : string prop;  (** device_fleet_name *)
  enable_iot_role_alias : bool prop option; [@option]
      (** enable_iot_role_alias *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  output_config : aws_sagemaker_device_fleet__output_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device_fleet *)

type t = {
  arn : string prop;
  description : string prop;
  device_fleet_name : string prop;
  enable_iot_role_alias : bool prop;
  id : string prop;
  iot_role_alias : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_device_fleet ?description ?enable_iot_role_alias
    ?id ?tags ?tags_all ~device_fleet_name ~role_arn ~output_config
    __resource_id =
  let __resource_type = "aws_sagemaker_device_fleet" in
  let __resource =
    ({
       description;
       device_fleet_name;
       enable_iot_role_alias;
       id;
       role_arn;
       tags;
       tags_all;
       output_config;
     }
      : aws_sagemaker_device_fleet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_device_fleet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       device_fleet_name =
         Prop.computed __resource_type __resource_id
           "device_fleet_name";
       enable_iot_role_alias =
         Prop.computed __resource_type __resource_id
           "enable_iot_role_alias";
       id = Prop.computed __resource_type __resource_id "id";
       iot_role_alias =
         Prop.computed __resource_type __resource_id "iot_role_alias";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
