(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_constraint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint__timeouts *)

type aws_servicecatalog_constraint = {
  accept_language : string option; [@option]  (** accept_language *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  parameters : string;  (** parameters *)
  portfolio_id : string;  (** portfolio_id *)
  product_id : string;  (** product_id *)
  type_ : string; [@key "type"]  (** type *)
  timeouts : aws_servicecatalog_constraint__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint *)

let aws_servicecatalog_constraint ?accept_language ?description ?id
    ?timeouts ~parameters ~portfolio_id ~product_id ~type_
    __resource_id =
  let __resource_type = "aws_servicecatalog_constraint" in
  let __resource =
    {
      accept_language;
      description;
      id;
      parameters;
      portfolio_id;
      product_id;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_constraint __resource);
  ()
