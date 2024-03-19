(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection_health_check_association = {
  health_check_arn : string prop;  (** health_check_arn *)
  id : string prop option; [@option]  (** id *)
  shield_protection_id : string prop;  (** shield_protection_id *)
}
[@@deriving yojson_of]
(** aws_shield_protection_health_check_association *)

let aws_shield_protection_health_check_association ?id
    ~health_check_arn ~shield_protection_id () :
    aws_shield_protection_health_check_association =
  { health_check_arn; id; shield_protection_id }

type t = {
  health_check_arn : string prop;
  id : string prop;
  shield_protection_id : string prop;
}

let register ?tf_module ?id ~health_check_arn ~shield_protection_id
    __resource_id =
  let __resource_type =
    "aws_shield_protection_health_check_association"
  in
  let __resource =
    aws_shield_protection_health_check_association ?id
      ~health_check_arn ~shield_protection_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection_health_check_association
       __resource);
  let __resource_attributes =
    ({
       health_check_arn =
         Prop.computed __resource_type __resource_id
           "health_check_arn";
       id = Prop.computed __resource_type __resource_id "id";
       shield_protection_id =
         Prop.computed __resource_type __resource_id
           "shield_protection_id";
     }
      : t)
  in
  __resource_attributes
