(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type device = {
  description : string prop option; [@option]  (** description *)
  device_name : string prop;  (** device_name *)
  iot_thing_name : string prop option; [@option]
      (** iot_thing_name *)
}
[@@deriving yojson_of]
(** device *)

type aws_sagemaker_device = {
  device_fleet_name : string prop;  (** device_fleet_name *)
  id : string prop option; [@option]  (** id *)
  device : device list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device *)

let device ?description ?iot_thing_name ~device_name () : device =
  { description; device_name; iot_thing_name }

let aws_sagemaker_device ?id ~device_fleet_name ~device () :
    aws_sagemaker_device =
  { device_fleet_name; id; device }

type t = {
  agent_version : string prop;
  arn : string prop;
  device_fleet_name : string prop;
  id : string prop;
}

let make ?id ~device_fleet_name ~device __id =
  let __type = "aws_sagemaker_device" in
  let __attrs =
    ({
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
