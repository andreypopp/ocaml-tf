(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_device__device = {
  description : string prop option; [@option]  (** description *)
  device_name : string prop;  (** device_name *)
  iot_thing_name : string prop option; [@option]
      (** iot_thing_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_device__device *)

type aws_sagemaker_device = {
  device_fleet_name : string prop;  (** device_fleet_name *)
  id : string prop option; [@option]  (** id *)
  device : aws_sagemaker_device__device list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device *)

type t = {
  agent_version : string prop;
  arn : string prop;
  device_fleet_name : string prop;
  id : string prop;
}

let aws_sagemaker_device ?id ~device_fleet_name ~device __resource_id
    =
  let __resource_type = "aws_sagemaker_device" in
  let __resource =
    ({ device_fleet_name; id; device } : aws_sagemaker_device)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
