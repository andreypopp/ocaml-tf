(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predicate = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** predicate *)

type aws_wafregional_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicate : predicate list;
}
[@@deriving yojson_of]
(** aws_wafregional_rule *)

let predicate ~data_id ~negated ~type_ () : predicate =
  { data_id; negated; type_ }

let aws_wafregional_rule ?id ?tags ?tags_all ~metric_name ~name
    ~predicate () : aws_wafregional_rule =
  { id; metric_name; name; tags; tags_all; predicate }

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~metric_name ~name ~predicate __id =
  let __type = "aws_wafregional_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_rule
        (aws_wafregional_rule ?id ?tags ?tags_all ~metric_name ~name
           ~predicate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~predicate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~metric_name ~name ~predicate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
