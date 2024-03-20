(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type insights_configuration = {
  insights_enabled : bool prop;  (** insights_enabled *)
  notifications_enabled : bool prop option; [@option]
      (** notifications_enabled *)
}
[@@deriving yojson_of]
(** insights_configuration *)

type aws_xray_group = {
  filter_expression : string prop;  (** filter_expression *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  insights_configuration : insights_configuration list;
}
[@@deriving yojson_of]
(** aws_xray_group *)

let insights_configuration ?notifications_enabled ~insights_enabled
    () : insights_configuration =
  { insights_enabled; notifications_enabled }

let aws_xray_group ?id ?tags ?tags_all ~filter_expression ~group_name
    ~insights_configuration () : aws_xray_group =
  {
    filter_expression;
    group_name;
    id;
    tags;
    tags_all;
    insights_configuration;
  }

type t = {
  arn : string prop;
  filter_expression : string prop;
  group_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~filter_expression ~group_name
    ~insights_configuration __id =
  let __type = "aws_xray_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       filter_expression =
         Prop.computed __type __id "filter_expression";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_group
        (aws_xray_group ?id ?tags ?tags_all ~filter_expression
           ~group_name ~insights_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~filter_expression
    ~group_name ~insights_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~filter_expression ~group_name
      ~insights_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
