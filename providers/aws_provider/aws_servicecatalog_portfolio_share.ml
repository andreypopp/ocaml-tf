(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_portfolio_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio_share__timeouts *)

type aws_servicecatalog_portfolio_share = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  id : string prop option; [@option]  (** id *)
  portfolio_id : string prop;  (** portfolio_id *)
  principal_id : string prop;  (** principal_id *)
  share_principals : bool prop option; [@option]
      (** share_principals *)
  share_tag_options : bool prop option; [@option]
      (** share_tag_options *)
  type_ : string prop; [@key "type"]  (** type *)
  wait_for_acceptance : bool prop option; [@option]
      (** wait_for_acceptance *)
  timeouts : aws_servicecatalog_portfolio_share__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio_share *)

let aws_servicecatalog_portfolio_share ?accept_language ?id
    ?share_principals ?share_tag_options ?wait_for_acceptance
    ?timeouts ~portfolio_id ~principal_id ~type_ __resource_id =
  let __resource_type = "aws_servicecatalog_portfolio_share" in
  let __resource =
    {
      accept_language;
      id;
      portfolio_id;
      principal_id;
      share_principals;
      share_tag_options;
      type_;
      wait_for_acceptance;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_portfolio_share __resource);
  ()
