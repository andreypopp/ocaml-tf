(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_constraint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_constraint__timeouts *)

type aws_servicecatalog_constraint = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  parameters : string prop;  (** parameters *)
  portfolio_id : string prop;  (** portfolio_id *)
  product_id : string prop;  (** product_id *)
  type_ : string prop; [@key "type"]  (** type *)
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
