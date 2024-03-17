(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_permission = {
  actions : string list;  (** actions *)
  certificate_authority_arn : string;
      (** certificate_authority_arn *)
  principal : string;  (** principal *)
}
[@@deriving yojson_of]
(** aws_acmpca_permission *)

let aws_acmpca_permission ~actions ~certificate_authority_arn
    ~principal __resource_id =
  let __resource_type = "aws_acmpca_permission" in
  let __resource =
    { actions; certificate_authority_arn; principal }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_permission __resource);
  ()
