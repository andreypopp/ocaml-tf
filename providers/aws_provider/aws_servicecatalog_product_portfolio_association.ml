(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_product_portfolio_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product_portfolio_association__timeouts *)

type aws_servicecatalog_product_portfolio_association = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  id : string prop option; [@option]  (** id *)
  portfolio_id : string prop;  (** portfolio_id *)
  product_id : string prop;  (** product_id *)
  source_portfolio_id : string prop option; [@option]
      (** source_portfolio_id *)
  timeouts :
    aws_servicecatalog_product_portfolio_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_product_portfolio_association *)

let aws_servicecatalog_product_portfolio_association ?accept_language
    ?id ?source_portfolio_id ?timeouts ~portfolio_id ~product_id
    __resource_id =
  let __resource_type =
    "aws_servicecatalog_product_portfolio_association"
  in
  let __resource =
    {
      accept_language;
      id;
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
