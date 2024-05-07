(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type variations__value = {
  bool_value : string prop option; [@option]
  double_value : string prop option; [@option]
  long_value : string prop option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : variations__value) -> ()

let yojson_of_variations__value =
  (function
   | {
       bool_value = v_bool_value;
       double_value = v_double_value;
       long_value = v_long_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "long_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_double_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "double_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bool_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bool_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : variations__value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_variations__value

[@@@deriving.end]

type variations = {
  name : string prop;
  value : variations__value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : variations) -> ()

let yojson_of_variations =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_variations__value v_value
         in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : variations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_variations

[@@@deriving.end]

type evaluation_rules = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : evaluation_rules) -> ()

let yojson_of_evaluation_rules =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : evaluation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_evaluation_rules

[@@@deriving.end]

type aws_evidently_feature = {
  default_variation : string prop option; [@option]
  description : string prop option; [@option]
  entity_overrides : (string * string prop) list option; [@option]
  evaluation_strategy : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
  variations : variations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_evidently_feature) -> ()

let yojson_of_aws_evidently_feature =
  (function
   | {
       default_variation = v_default_variation;
       description = v_description;
       entity_overrides = v_entity_overrides;
       evaluation_strategy = v_evaluation_strategy;
       id = v_id;
       name = v_name;
       project = v_project;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
       variations = v_variations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_variations v_variations
         in
         ("variations", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
         match v_evaluation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entity_overrides with
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
             let bnd = "entity_overrides", arg in
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
       let bnds =
         match v_default_variation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_variation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_evidently_feature -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_evidently_feature

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let variations__value ?bool_value ?double_value ?long_value
    ?string_value () : variations__value =
  { bool_value; double_value; long_value; string_value }

let variations ~name ~value () : variations = { name; value }

let aws_evidently_feature ?default_variation ?description
    ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
    ?timeouts ~name ~project ~variations () : aws_evidently_feature =
  {
    default_variation;
    description;
    entity_overrides;
    evaluation_strategy;
    id;
    name;
    project;
    tags;
    tags_all;
    timeouts;
    variations;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  default_variation : string prop;
  description : string prop;
  entity_overrides : (string * string) list prop;
  evaluation_rules : evaluation_rules list prop;
  evaluation_strategy : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  value_type : string prop;
}

let make ?default_variation ?description ?entity_overrides
    ?evaluation_strategy ?id ?tags ?tags_all ?timeouts ~name ~project
    ~variations __id =
  let __type = "aws_evidently_feature" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       default_variation =
         Prop.computed __type __id "default_variation";
       description = Prop.computed __type __id "description";
       entity_overrides =
         Prop.computed __type __id "entity_overrides";
       evaluation_rules =
         Prop.computed __type __id "evaluation_rules";
       evaluation_strategy =
         Prop.computed __type __id "evaluation_strategy";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       value_type = Prop.computed __type __id "value_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_evidently_feature
        (aws_evidently_feature ?default_variation ?description
           ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
           ?timeouts ~name ~project ~variations ());
    attrs = __attrs;
  }

let register ?tf_module ?default_variation ?description
    ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
    ?timeouts ~name ~project ~variations __id =
  let (r : _ Tf_core.resource) =
    make ?default_variation ?description ?entity_overrides
      ?evaluation_strategy ?id ?tags ?tags_all ?timeouts ~name
      ~project ~variations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
