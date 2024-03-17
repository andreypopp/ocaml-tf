(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_principal_portfolio_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_principal_portfolio_association__timeouts *)

type aws_servicecatalog_principal_portfolio_association = {
  accept_language : string option; [@option]  (** accept_language *)
  portfolio_id : string;  (** portfolio_id *)
  principal_arn : string;  (** principal_arn *)
  principal_type : string option; [@option]  (** principal_type *)
  timeouts :
    aws_servicecatalog_principal_portfolio_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_principal_portfolio_association *)

let aws_servicecatalog_principal_portfolio_association
    ?accept_language ?principal_type ?timeouts ~portfolio_id
    ~principal_arn __resource_id =
  let __resource_type =
    "aws_servicecatalog_principal_portfolio_association"
  in
  let __resource =
    {
      accept_language;
      portfolio_id;
      principal_arn;
      principal_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_principal_portfolio_association
       __resource);
  ()
