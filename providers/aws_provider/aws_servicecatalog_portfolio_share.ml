(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_portfolio_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio_share__timeouts *)

type aws_servicecatalog_portfolio_share = {
  accept_language : string option; [@option]  (** accept_language *)
  portfolio_id : string;  (** portfolio_id *)
  principal_id : string;  (** principal_id *)
  share_principals : bool option; [@option]  (** share_principals *)
  share_tag_options : bool option; [@option]
      (** share_tag_options *)
  type_ : string; [@key "type"]  (** type *)
  wait_for_acceptance : bool option; [@option]
      (** wait_for_acceptance *)
  timeouts : aws_servicecatalog_portfolio_share__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio_share *)

let aws_servicecatalog_portfolio_share ?accept_language
    ?share_principals ?share_tag_options ?wait_for_acceptance
    ?timeouts ~portfolio_id ~principal_id ~type_ __resource_id =
  let __resource_type = "aws_servicecatalog_portfolio_share" in
  let __resource =
    {
      accept_language;
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
