(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_topic_data_protection_policy = {
  arn : string prop;  (** arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_sns_topic_data_protection_policy *)

type t = {
  arn : string prop;
  id : string prop;
  policy : string prop;
}

let aws_sns_topic_data_protection_policy ?id ~arn ~policy
    __resource_id =
  let __resource_type = "aws_sns_topic_data_protection_policy" in
  let __resource =
    ({ arn; id; policy } : aws_sns_topic_data_protection_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_topic_data_protection_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
