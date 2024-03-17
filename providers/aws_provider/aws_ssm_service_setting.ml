(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssm_service_setting = {
  setting_id : string;  (** setting_id *)
  setting_value : string;  (** setting_value *)
}
[@@deriving yojson_of]
(** aws_ssm_service_setting *)

let aws_ssm_service_setting ~setting_id ~setting_value __resource_id
    =
  let __resource_type = "aws_ssm_service_setting" in
  let __resource = { setting_id; setting_value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_service_setting __resource);
  ()
