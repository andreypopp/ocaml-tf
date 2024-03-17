(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_patch_group = {
  baseline_id : string;  (** baseline_id *)
  id : string option; [@option]  (** id *)
  patch_group : string;  (** patch_group *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_group *)

let aws_ssm_patch_group ?id ~baseline_id ~patch_group __resource_id =
  let __resource_type = "aws_ssm_patch_group" in
  let __resource = { baseline_id; id; patch_group } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_patch_group __resource);
  ()
