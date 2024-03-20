(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predicate = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** predicate *)

type aws_wafregional_rate_based_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  rate_key : string prop;  (** rate_key *)
  rate_limit : float prop;  (** rate_limit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicate : predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rate_based_rule *)

let predicate ~data_id ~negated ~type_ () : predicate =
  { data_id; negated; type_ }

let aws_wafregional_rate_based_rule ?id ?tags ?tags_all ~metric_name
    ~name ~rate_key ~rate_limit ~predicate () :
    aws_wafregional_rate_based_rule =
  {
    id;
    metric_name;
    name;
    rate_key;
    rate_limit;
    tags;
    tags_all;
    predicate;
  }

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~metric_name ~name ~rate_key ~rate_limit
    ~predicate __id =
  let __type = "aws_wafregional_rate_based_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
       rate_key = Prop.computed __type __id "rate_key";
       rate_limit = Prop.computed __type __id "rate_limit";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_rate_based_rule
        (aws_wafregional_rate_based_rule ?id ?tags ?tags_all
           ~metric_name ~name ~rate_key ~rate_limit ~predicate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~rate_key ~rate_limit ~predicate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~metric_name ~name ~rate_key ~rate_limit
      ~predicate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
