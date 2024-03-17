(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_delegation_set = {
  id : string option; [@option]  (** id *)
  reference_name : string option; [@option]  (** reference_name *)
}
[@@deriving yojson_of]
(** aws_route53_delegation_set *)

let aws_route53_delegation_set ?id ?reference_name __resource_id =
  let __resource_type = "aws_route53_delegation_set" in
  let __resource = { id; reference_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_delegation_set __resource);
  ()
