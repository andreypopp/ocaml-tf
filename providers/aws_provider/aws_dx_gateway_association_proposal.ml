(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_gateway_association_proposal = {
  associated_gateway_id : string;  (** associated_gateway_id *)
  dx_gateway_id : string;  (** dx_gateway_id *)
  dx_gateway_owner_account_id : string;
      (** dx_gateway_owner_account_id *)
}
[@@deriving yojson_of]
(** aws_dx_gateway_association_proposal *)

let aws_dx_gateway_association_proposal ~associated_gateway_id
    ~dx_gateway_id ~dx_gateway_owner_account_id __resource_id =
  let __resource_type = "aws_dx_gateway_association_proposal" in
  let __resource =
    {
      associated_gateway_id;
      dx_gateway_id;
      dx_gateway_owner_account_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_gateway_association_proposal __resource);
  ()
