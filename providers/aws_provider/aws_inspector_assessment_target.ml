(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_assessment_target = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_arn : string prop option; [@option]
      (** resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_inspector_assessment_target *)

let aws_inspector_assessment_target ?id ?resource_group_arn ~name
    __resource_id =
  let __resource_type = "aws_inspector_assessment_target" in
  let __resource = { id; name; resource_group_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_assessment_target __resource);
  ()
