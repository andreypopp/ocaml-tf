(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type device = {
  description : string prop option; [@option]
  device_name : string prop;
  iot_thing_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : device) -> ()

let yojson_of_device =
  (function
   | {
       description = v_description;
       device_name = v_device_name;
       iot_thing_name = v_iot_thing_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_iot_thing_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iot_thing_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
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
    : device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device

[@@@deriving.end]

type aws_sagemaker_device = {
  device_fleet_name : string prop;
  id : string prop option; [@option]
  device : device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_device) -> ()

let yojson_of_aws_sagemaker_device =
  (function
   | {
       device_fleet_name = v_device_fleet_name;
       id = v_id;
       device = v_device;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_device then bnds
         else
           let arg = (yojson_of_list yojson_of_device) v_device in
           let bnd = "device", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_device_fleet_name
         in
         ("device_fleet_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_device

[@@@deriving.end]

let device ?description ?iot_thing_name ~device_name () : device =
  { description; device_name; iot_thing_name }

let aws_sagemaker_device ?id ~device_fleet_name ~device () :
    aws_sagemaker_device =
  { device_fleet_name; id; device }

type t = {
  tf_name : string;
  agent_version : string prop;
  arn : string prop;
  device_fleet_name : string prop;
  id : string prop;
}

let make ?id ~device_fleet_name ~device __id =
  let __type = "aws_sagemaker_device" in
  let __attrs =
    ({
       tf_name = __id;
       agent_version = Prop.computed __type __id "agent_version";
       arn = Prop.computed __type __id "arn";
       device_fleet_name =
         Prop.computed __type __id "device_fleet_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_device
        (aws_sagemaker_device ?id ~device_fleet_name ~device ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~device_fleet_name ~device __id =
  let (r : _ Tf_core.resource) =
    make ?id ~device_fleet_name ~device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
