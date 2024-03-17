(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_principal_portfolio_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_principal_portfolio_association__timeouts *)

type aws_servicecatalog_principal_portfolio_association = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  id : string prop option; [@option]  (** id *)
  portfolio_id : string prop;  (** portfolio_id *)
  principal_arn : string prop;  (** principal_arn *)
  principal_type : string prop option; [@option]
      (** principal_type *)
  timeouts :
    aws_servicecatalog_principal_portfolio_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_principal_portfolio_association *)

let aws_servicecatalog_principal_portfolio_association
    ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
    ~principal_arn __resource_id =
  let __resource_type =
    "aws_servicecatalog_principal_portfolio_association"
  in
  let __resource =
    {
      accept_language;
      id;
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
