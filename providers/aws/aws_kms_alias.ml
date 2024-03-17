(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_alias = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  target_key_id : string prop;  (** target_key_id *)
}
[@@deriving yojson_of]
(** aws_kms_alias *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  target_key_arn : string prop;
  target_key_id : string prop;
}

let aws_kms_alias ?id ?name ?name_prefix ~target_key_id __resource_id
    =
  let __resource_type = "aws_kms_alias" in
  let __resource =
    ({ id; name; name_prefix; target_key_id } : aws_kms_alias)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_alias __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       target_key_arn =
         Prop.computed __resource_type __resource_id "target_key_arn";
       target_key_id =
         Prop.computed __resource_type __resource_id "target_key_id";
     }
      : t)
  in
  __resource_attributes
