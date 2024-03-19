(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~device_fleet_name ~device __resource_id
    =
  let __resource_type = "aws_sagemaker_device" in
  let __resource =
    aws_sagemaker_device ?id ~device_fleet_name ~device ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_device __resource);
  let __resource_attributes =
    ({
       agent_version =
         Prop.computed __resource_type __resource_id "agent_version";
       arn = Prop.computed __resource_type __resource_id "arn";
       device_fleet_name =
         Prop.computed __resource_type __resource_id
           "device_fleet_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
