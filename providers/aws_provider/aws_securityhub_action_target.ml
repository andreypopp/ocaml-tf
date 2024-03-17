(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_action_target = {
  description : string;  (** description *)
  id : string option; [@option]  (** id *)
  identifier : string;  (** identifier *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_securityhub_action_target *)

let aws_securityhub_action_target ?id ~description ~identifier ~name
    __resource_id =
  let __resource_type = "aws_securityhub_action_target" in
  let __resource = { description; id; identifier; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_action_target __resource);
  ()
