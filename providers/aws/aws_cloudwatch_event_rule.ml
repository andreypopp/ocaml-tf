(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_rule = {
  description : string prop option; [@option]
  event_bus_name : string prop option; [@option]
  event_pattern : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  is_enabled : bool prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  role_arn : string prop option; [@option]
  schedule_expression : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_rule) -> ()

let yojson_of_aws_cloudwatch_event_rule =
  (function
   | {
       description = v_description;
       event_bus_name = v_event_bus_name;
       event_pattern = v_event_pattern;
       force_destroy = v_force_destroy;
       id = v_id;
       is_enabled = v_is_enabled;
       name = v_name;
       name_prefix = v_name_prefix;
       role_arn = v_role_arn;
       schedule_expression = v_schedule_expression;
       state = v_state;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
             bnd :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_bus_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_bus_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_rule

[@@@deriving.end]

let aws_cloudwatch_event_rule ?description ?event_bus_name
    ?event_pattern ?force_destroy ?id ?is_enabled ?name ?name_prefix
    ?role_arn ?schedule_expression ?state ?tags ?tags_all () :
    aws_cloudwatch_event_rule =
  {
    description;
    event_bus_name;
    event_pattern;
    force_destroy;
    id;
    is_enabled;
    name;
    name_prefix;
    role_arn;
    schedule_expression;
    state;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  event_bus_name : string prop;
  event_pattern : string prop;
  force_destroy : bool prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  schedule_expression : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?event_bus_name ?event_pattern ?force_destroy
    ?id ?is_enabled ?name ?name_prefix ?role_arn ?schedule_expression
    ?state ?tags ?tags_all __id =
  let __type = "aws_cloudwatch_event_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_bus_name = Prop.computed __type __id "event_bus_name";
       event_pattern = Prop.computed __type __id "event_pattern";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       is_enabled = Prop.computed __type __id "is_enabled";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       role_arn = Prop.computed __type __id "role_arn";
       schedule_expression =
         Prop.computed __type __id "schedule_expression";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_rule
        (aws_cloudwatch_event_rule ?description ?event_bus_name
           ?event_pattern ?force_destroy ?id ?is_enabled ?name
           ?name_prefix ?role_arn ?schedule_expression ?state ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?event_bus_name ?event_pattern
    ?force_destroy ?id ?is_enabled ?name ?name_prefix ?role_arn
    ?schedule_expression ?state ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?event_bus_name ?event_pattern ?force_destroy
      ?id ?is_enabled ?name ?name_prefix ?role_arn
      ?schedule_expression ?state ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
