(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio_share *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_portfolio_share ?accept_language ?id
    ?share_principals ?share_tag_options ?wait_for_acceptance
    ?timeouts ~portfolio_id ~principal_id ~type_ () :
    aws_servicecatalog_portfolio_share =
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

type t = {
  accept_language : string prop;
  accepted : bool prop;
  id : string prop;
  portfolio_id : string prop;
  principal_id : string prop;
  share_principals : bool prop;
  share_tag_options : bool prop;
  type_ : string prop;
  wait_for_acceptance : bool prop;
}

let make ?accept_language ?id ?share_principals ?share_tag_options
    ?wait_for_acceptance ?timeouts ~portfolio_id ~principal_id ~type_
    __id =
  let __type = "aws_servicecatalog_portfolio_share" in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       accepted = Prop.computed __type __id "accepted";
       id = Prop.computed __type __id "id";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       principal_id = Prop.computed __type __id "principal_id";
       share_principals =
         Prop.computed __type __id "share_principals";
       share_tag_options =
         Prop.computed __type __id "share_tag_options";
       type_ = Prop.computed __type __id "type";
       wait_for_acceptance =
         Prop.computed __type __id "wait_for_acceptance";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_portfolio_share
        (aws_servicecatalog_portfolio_share ?accept_language ?id
           ?share_principals ?share_tag_options ?wait_for_acceptance
           ?timeouts ~portfolio_id ~principal_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?share_principals
    ?share_tag_options ?wait_for_acceptance ?timeouts ~portfolio_id
    ~principal_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?share_principals ?share_tag_options
      ?wait_for_acceptance ?timeouts ~portfolio_id ~principal_id
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
