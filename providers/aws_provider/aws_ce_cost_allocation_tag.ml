(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ce_cost_allocation_tag = {
  status : string;  (** status *)
  tag_key : string;  (** tag_key *)
}
[@@deriving yojson_of]
(** aws_ce_cost_allocation_tag *)

let aws_ce_cost_allocation_tag ~status ~tag_key __resource_id =
  let __resource_type = "aws_ce_cost_allocation_tag" in
  let __resource = { status; tag_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_cost_allocation_tag __resource);
  ()
