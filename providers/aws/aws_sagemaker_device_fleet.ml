(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  s3_output_location : string prop;  (** s3_output_location *)
}
[@@deriving yojson_of]
(** output_config *)

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
  output_config : output_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device_fleet *)

let output_config ?kms_key_id ~s3_output_location () : output_config
    =
  { kms_key_id; s3_output_location }

let aws_sagemaker_device_fleet ?description ?enable_iot_role_alias
    ?id ?tags ?tags_all ~device_fleet_name ~role_arn ~output_config
    () : aws_sagemaker_device_fleet =
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

let make ?description ?enable_iot_role_alias ?id ?tags ?tags_all
    ~device_fleet_name ~role_arn ~output_config __id =
  let __type = "aws_sagemaker_device_fleet" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       device_fleet_name =
         Prop.computed __type __id "device_fleet_name";
       enable_iot_role_alias =
         Prop.computed __type __id "enable_iot_role_alias";
       id = Prop.computed __type __id "id";
       iot_role_alias = Prop.computed __type __id "iot_role_alias";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_device_fleet
        (aws_sagemaker_device_fleet ?description
           ?enable_iot_role_alias ?id ?tags ?tags_all
           ~device_fleet_name ~role_arn ~output_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_iot_role_alias ?id ?tags
    ?tags_all ~device_fleet_name ~role_arn ~output_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_iot_role_alias ?id ?tags ?tags_all
      ~device_fleet_name ~role_arn ~output_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
