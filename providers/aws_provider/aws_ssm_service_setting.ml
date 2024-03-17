(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_service_setting = {
  id : string prop option; [@option]  (** id *)
  setting_id : string prop;  (** setting_id *)
  setting_value : string prop;  (** setting_value *)
}
[@@deriving yojson_of]
(** aws_ssm_service_setting *)

type t = {
  arn : string prop;
  id : string prop;
  setting_id : string prop;
  setting_value : string prop;
  status : string prop;
}

let aws_ssm_service_setting ?id ~setting_id ~setting_value
    __resource_id =
  let __resource_type = "aws_ssm_service_setting" in
  let __resource =
    ({ id; setting_id; setting_value } : aws_ssm_service_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_service_setting __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       setting_id =
         Prop.computed __resource_type __resource_id "setting_id";
       setting_value =
         Prop.computed __resource_type __resource_id "setting_value";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
