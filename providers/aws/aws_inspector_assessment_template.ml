(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_subscription = {
  event : string prop;  (** event *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** event_subscription *)

type aws_inspector_assessment_template = {
  duration : float prop;  (** duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rules_package_arns : string prop list;  (** rules_package_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
  event_subscription : event_subscription list;
}
[@@deriving yojson_of]
(** aws_inspector_assessment_template *)

let event_subscription ~event ~topic_arn () : event_subscription =
  { event; topic_arn }

let aws_inspector_assessment_template ?id ?tags ?tags_all ~duration
    ~name ~rules_package_arns ~target_arn ~event_subscription () :
    aws_inspector_assessment_template =
  {
    duration;
    id;
    name;
    rules_package_arns;
    tags;
    tags_all;
    target_arn;
    event_subscription;
  }

type t = {
  arn : string prop;
  duration : float prop;
  id : string prop;
  name : string prop;
  rules_package_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

let make ?id ?tags ?tags_all ~duration ~name ~rules_package_arns
    ~target_arn ~event_subscription __id =
  let __type = "aws_inspector_assessment_template" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       duration = Prop.computed __type __id "duration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rules_package_arns =
         Prop.computed __type __id "rules_package_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector_assessment_template
        (aws_inspector_assessment_template ?id ?tags ?tags_all
           ~duration ~name ~rules_package_arns ~target_arn
           ~event_subscription ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~duration ~name
    ~rules_package_arns ~target_arn ~event_subscription __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~duration ~name ~rules_package_arns
      ~target_arn ~event_subscription __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
