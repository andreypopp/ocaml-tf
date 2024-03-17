(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_default_patch_baseline = {
  baseline_id : string;  (** baseline_id *)
  operating_system : string;  (** operating_system *)
}
[@@deriving yojson_of]
(** aws_ssm_default_patch_baseline *)

let aws_ssm_default_patch_baseline ~baseline_id ~operating_system
    __resource_id =
  let __resource_type = "aws_ssm_default_patch_baseline" in
  let __resource = { baseline_id; operating_system } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_default_patch_baseline __resource);
  ()
