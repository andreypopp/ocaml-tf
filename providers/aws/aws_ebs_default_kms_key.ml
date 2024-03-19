(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_default_kms_key = {
  id : string prop option; [@option]  (** id *)
  key_arn : string prop;  (** key_arn *)
}
[@@deriving yojson_of]
(** aws_ebs_default_kms_key *)

let aws_ebs_default_kms_key ?id ~key_arn () : aws_ebs_default_kms_key
    =
  { id; key_arn }

type t = { id : string prop; key_arn : string prop }

let register ?tf_module ?id ~key_arn __resource_id =
  let __resource_type = "aws_ebs_default_kms_key" in
  let __resource = aws_ebs_default_kms_key ?id ~key_arn () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_default_kms_key __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_arn =
         Prop.computed __resource_type __resource_id "key_arn";
     }
      : t)
  in
  __resource_attributes
