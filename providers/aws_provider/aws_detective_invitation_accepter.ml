(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_detective_invitation_accepter = {
  graph_arn : string;  (** graph_arn *)
}
[@@deriving yojson_of]
(** aws_detective_invitation_accepter *)

let aws_detective_invitation_accepter ~graph_arn __resource_id =
  let __resource_type = "aws_detective_invitation_accepter" in
  let __resource = { graph_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_invitation_accepter __resource);
  ()