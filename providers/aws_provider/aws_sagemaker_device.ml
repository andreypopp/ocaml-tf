(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_device__device = {
  description : string option; [@option]  (** description *)
  device_name : string;  (** device_name *)
  iot_thing_name : string option; [@option]  (** iot_thing_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_device__device *)

type aws_sagemaker_device = {
  device_fleet_name : string;  (** device_fleet_name *)
  id : string option; [@option]  (** id *)
  device : aws_sagemaker_device__device list;
}
[@@deriving yojson_of]
(** aws_sagemaker_device *)

let aws_sagemaker_device ?id ~device_fleet_name ~device __resource_id
    =
  let __resource_type = "aws_sagemaker_device" in
  let __resource = { device_fleet_name; id; device } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_device __resource);
  ()
