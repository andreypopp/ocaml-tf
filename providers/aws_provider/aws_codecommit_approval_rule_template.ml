(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_approval_rule_template = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template *)

let aws_codecommit_approval_rule_template ?description ?id ~content
    ~name __resource_id =
  let __resource_type = "aws_codecommit_approval_rule_template" in
  let __resource = { content; description; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_approval_rule_template __resource);
  ()
