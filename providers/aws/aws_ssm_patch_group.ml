(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_patch_group = {
  baseline_id : string prop;  (** baseline_id *)
  id : string prop option; [@option]  (** id *)
  patch_group : string prop;  (** patch_group *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_group *)

let aws_ssm_patch_group ?id ~baseline_id ~patch_group () :
    aws_ssm_patch_group =
  { baseline_id; id; patch_group }

type t = {
  baseline_id : string prop;
  id : string prop;
  patch_group : string prop;
}

let register ?tf_module ?id ~baseline_id ~patch_group __resource_id =
  let __resource_type = "aws_ssm_patch_group" in
  let __resource =
    aws_ssm_patch_group ?id ~baseline_id ~patch_group ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_patch_group __resource);
  let __resource_attributes =
    ({
       baseline_id =
         Prop.computed __resource_type __resource_id "baseline_id";
       id = Prop.computed __resource_type __resource_id "id";
       patch_group =
         Prop.computed __resource_type __resource_id "patch_group";
     }
      : t)
  in
  __resource_attributes
