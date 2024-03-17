(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_standards_subscription = {
  id : string prop option; [@option]  (** id *)
  standards_arn : string prop;  (** standards_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_subscription *)

type t = { id : string prop; standards_arn : string prop }

let aws_securityhub_standards_subscription ?id ~standards_arn
    __resource_id =
  let __resource_type = "aws_securityhub_standards_subscription" in
  let __resource =
    ({ id; standards_arn } : aws_securityhub_standards_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_standards_subscription __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       standards_arn =
         Prop.computed __resource_type __resource_id "standards_arn";
     }
      : t)
  in
  __resource_attributes
