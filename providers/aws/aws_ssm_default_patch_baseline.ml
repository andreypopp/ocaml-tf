(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_default_patch_baseline = {
  baseline_id : string prop;  (** baseline_id *)
  id : string prop option; [@option]  (** id *)
  operating_system : string prop;  (** operating_system *)
}
[@@deriving yojson_of]
(** aws_ssm_default_patch_baseline *)

type t = {
  baseline_id : string prop;
  id : string prop;
  operating_system : string prop;
}

let aws_ssm_default_patch_baseline ?id ~baseline_id ~operating_system
    __resource_id =
  let __resource_type = "aws_ssm_default_patch_baseline" in
  let __resource =
    ({ baseline_id; id; operating_system }
      : aws_ssm_default_patch_baseline)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_default_patch_baseline __resource);
  let __resource_attributes =
    ({
       baseline_id =
         Prop.computed __resource_type __resource_id "baseline_id";
       id = Prop.computed __resource_type __resource_id "id";
       operating_system =
         Prop.computed __resource_type __resource_id
           "operating_system";
     }
      : t)
  in
  __resource_attributes
