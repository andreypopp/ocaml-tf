(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_product_portfolio_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product_portfolio_association__timeouts *)

type aws_servicecatalog_product_portfolio_association = {
  accept_language : string option; [@option]  (** accept_language *)
  portfolio_id : string;  (** portfolio_id *)
  product_id : string;  (** product_id *)
  source_portfolio_id : string option; [@option]
      (** source_portfolio_id *)
  timeouts :
    aws_servicecatalog_product_portfolio_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_product_portfolio_association *)

let aws_servicecatalog_product_portfolio_association ?accept_language
    ?source_portfolio_id ?timeouts ~portfolio_id ~product_id
    __resource_id =
  let __resource_type =
    "aws_servicecatalog_product_portfolio_association"
  in
  let __resource =
    {
      accept_language;
      portfolio_id;
      product_id;
      source_portfolio_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_product_portfolio_association
       __resource);
  ()
