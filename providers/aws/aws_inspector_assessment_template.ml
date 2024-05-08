(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_subscription = {
  event : string prop;
  topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_subscription) -> ()

let yojson_of_event_subscription =
  (function
   | { event = v_event; topic_arn = v_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event in
         ("event", arg) :: bnds
       in
       `Assoc bnds
    : event_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_subscription

[@@@deriving.end]

type aws_inspector_assessment_template = {
  duration : float prop;
  id : string prop option; [@option]
  name : string prop;
  rules_package_arns : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_arn : string prop;
  event_subscription : event_subscription list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector_assessment_template) -> ()

let yojson_of_aws_inspector_assessment_template =
  (function
   | {
       duration = v_duration;
       id = v_id;
       name = v_name;
       rules_package_arns = v_rules_package_arns;
       tags = v_tags;
       tags_all = v_tags_all;
       target_arn = v_target_arn;
       event_subscription = v_event_subscription;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_event_subscription then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_subscription)
               v_event_subscription
           in
           let bnd = "event_subscription", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_rules_package_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_rules_package_arns
           in
           let bnd = "rules_package_arns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : aws_inspector_assessment_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector_assessment_template

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
