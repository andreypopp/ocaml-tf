(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_approval_rule_template = {
  content : string;  (** content *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template *)

let aws_codecommit_approval_rule_template ?description ~content ~name
    __resource_id =
  let __resource_type = "aws_codecommit_approval_rule_template" in
  let __resource = { content; description; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_approval_rule_template __resource);
  ()
