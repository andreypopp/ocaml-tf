(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_detective_organization_configuration = {
  auto_enable : bool;  (** auto_enable *)
  graph_arn : string;  (** graph_arn *)
}
[@@deriving yojson_of]
(** aws_detective_organization_configuration *)

let aws_detective_organization_configuration ~auto_enable ~graph_arn
    __resource_id =
  let __resource_type = "aws_detective_organization_configuration" in
  let __resource = { auto_enable; graph_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_organization_configuration __resource);
  ()
