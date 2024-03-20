(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_usage_limit = {
  amount : float prop;  (** amount *)
  breach_action : string prop option; [@option]  (** breach_action *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  feature_type : string prop;  (** feature_type *)
  id : string prop option; [@option]  (** id *)
  limit_type : string prop;  (** limit_type *)
  period : string prop option; [@option]  (** period *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_usage_limit *)

let aws_redshift_usage_limit ?breach_action ?id ?period ?tags
    ?tags_all ~amount ~cluster_identifier ~feature_type ~limit_type
    () : aws_redshift_usage_limit =
  {
    amount;
    breach_action;
    cluster_identifier;
    feature_type;
    id;
    limit_type;
    period;
    tags;
    tags_all;
  }

type t = {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  cluster_identifier : string prop;
  feature_type : string prop;
  id : string prop;
  limit_type : string prop;
  period : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?breach_action ?id ?period ?tags ?tags_all ~amount
    ~cluster_identifier ~feature_type ~limit_type __id =
  let __type = "aws_redshift_usage_limit" in
  let __attrs =
    ({
       amount = Prop.computed __type __id "amount";
       arn = Prop.computed __type __id "arn";
       breach_action = Prop.computed __type __id "breach_action";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       feature_type = Prop.computed __type __id "feature_type";
       id = Prop.computed __type __id "id";
       limit_type = Prop.computed __type __id "limit_type";
       period = Prop.computed __type __id "period";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_usage_limit
        (aws_redshift_usage_limit ?breach_action ?id ?period ?tags
           ?tags_all ~amount ~cluster_identifier ~feature_type
           ~limit_type ());
    attrs = __attrs;
  }

let register ?tf_module ?breach_action ?id ?period ?tags ?tags_all
    ~amount ~cluster_identifier ~feature_type ~limit_type __id =
  let (r : _ Tf_core.resource) =
    make ?breach_action ?id ?period ?tags ?tags_all ~amount
      ~cluster_identifier ~feature_type ~limit_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
