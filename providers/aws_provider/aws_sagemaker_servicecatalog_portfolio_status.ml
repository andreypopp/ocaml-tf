(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_servicecatalog_portfolio_status = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_servicecatalog_portfolio_status *)

let aws_sagemaker_servicecatalog_portfolio_status ~status
    __resource_id =
  let __resource_type =
    "aws_sagemaker_servicecatalog_portfolio_status"
  in
  let __resource = { status } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_servicecatalog_portfolio_status
       __resource);
  ()