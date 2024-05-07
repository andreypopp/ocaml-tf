(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_config = {
  kms_key_id : string prop option; [@option]
  s3_output_location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_config) -> ()

let yojson_of_output_config =
  (function
   | {
       kms_key_id = v_kms_key_id;
       s3_output_location = v_s3_output_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_output_location
         in
         ("s3_output_location", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_config

[@@@deriving.end]

type aws_sagemaker_device_fleet = {
  description : string prop option; [@option]
  device_fleet_name : string prop;
  enable_iot_role_alias : bool prop option; [@option]
  id : string prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  output_config : output_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_device_fleet) -> ()

let yojson_of_aws_sagemaker_device_fleet =
  (function
   | {
       description = v_description;
       device_fleet_name = v_device_fleet_name;
       enable_iot_role_alias = v_enable_iot_role_alias;
       id = v_id;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       output_config = v_output_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_config v_output_config
         in
         ("output_config", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_iot_role_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_iot_role_alias", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_fleet_name
         in
         ("device_fleet_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_device_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_device_fleet

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
