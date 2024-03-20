(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predicates = {
  data_id : string prop;  (** data_id *)
  negated : bool prop;  (** negated *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** predicates *)

type aws_waf_rule = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  predicates : predicates list;
}
[@@deriving yojson_of]
(** aws_waf_rule *)

let predicates ~data_id ~negated ~type_ () : predicates =
  { data_id; negated; type_ }

let aws_waf_rule ?id ?tags ?tags_all ~metric_name ~name ~predicates
    () : aws_waf_rule =
  { id; metric_name; name; tags; tags_all; predicates }

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~metric_name ~name ~predicates __id =
  let __type = "aws_waf_rule" in
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
      yojson_of_aws_waf_rule
        (aws_waf_rule ?id ?tags ?tags_all ~metric_name ~name
           ~predicates ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~predicates __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~metric_name ~name ~predicates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
