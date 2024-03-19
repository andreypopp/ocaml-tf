(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_resource_policy = {
  enable_hybrid : string prop option; [@option]  (** enable_hybrid *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_glue_resource_policy *)

let aws_glue_resource_policy ?enable_hybrid ?id ~policy () :
    aws_glue_resource_policy =
  { enable_hybrid; id; policy }

type t = {
  enable_hybrid : string prop;
  id : string prop;
  policy : string prop;
}

let register ?tf_module ?enable_hybrid ?id ~policy __resource_id =
  let __resource_type = "aws_glue_resource_policy" in
  let __resource =
    aws_glue_resource_policy ?enable_hybrid ?id ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_resource_policy __resource);
  let __resource_attributes =
    ({
       enable_hybrid =
         Prop.computed __resource_type __resource_id "enable_hybrid";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
