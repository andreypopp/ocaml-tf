(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control_mapping_sources__source_keyword = {
  keyword_input_type : string prop;
  keyword_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_mapping_sources__source_keyword) -> ()

let yojson_of_control_mapping_sources__source_keyword =
  (function
   | {
       keyword_input_type = v_keyword_input_type;
       keyword_value = v_keyword_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_keyword_value in
         ("keyword_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_keyword_input_type
         in
         ("keyword_input_type", arg) :: bnds
       in
       `Assoc bnds
    : control_mapping_sources__source_keyword ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_mapping_sources__source_keyword

[@@@deriving.end]

type control_mapping_sources = {
  source_description : string prop option; [@option]
  source_frequency : string prop option; [@option]
  source_name : string prop;
  source_set_up_option : string prop;
  source_type : string prop;
  troubleshooting_text : string prop option; [@option]
  source_keyword : control_mapping_sources__source_keyword list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_mapping_sources) -> ()

let yojson_of_control_mapping_sources =
  (function
   | {
       source_description = v_source_description;
       source_frequency = v_source_frequency;
       source_name = v_source_name;
       source_set_up_option = v_source_set_up_option;
       source_type = v_source_type;
       troubleshooting_text = v_troubleshooting_text;
       source_keyword = v_source_keyword;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_keyword then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_mapping_sources__source_keyword)
               v_source_keyword
           in
           let bnd = "source_keyword", arg in
           bnd :: bnds
       in
       let bnds =
         match v_troubleshooting_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "troubleshooting_text", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_type in
         ("source_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_set_up_option
         in
         ("source_set_up_option", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_name in
         ("source_name", arg) :: bnds
       in
       let bnds =
         match v_source_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_mapping_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_mapping_sources

[@@@deriving.end]

type aws_auditmanager_control = {
  action_plan_instructions : string prop option; [@option]
  action_plan_title : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  testing_information : string prop option; [@option]
  control_mapping_sources : control_mapping_sources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_control) -> ()

let yojson_of_aws_auditmanager_control =
  (function
   | {
       action_plan_instructions = v_action_plan_instructions;
       action_plan_title = v_action_plan_title;
       description = v_description;
       name = v_name;
       tags = v_tags;
       testing_information = v_testing_information;
       control_mapping_sources = v_control_mapping_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_control_mapping_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_mapping_sources)
               v_control_mapping_sources
           in
           let bnd = "control_mapping_sources", arg in
           bnd :: bnds
       in
       let bnds =
         match v_testing_information with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "testing_information", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_action_plan_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action_plan_title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action_plan_instructions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action_plan_instructions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_control

[@@@deriving.end]

let control_mapping_sources__source_keyword ~keyword_input_type
    ~keyword_value () : control_mapping_sources__source_keyword =
  { keyword_input_type; keyword_value }

let control_mapping_sources ?source_description ?source_frequency
    ?troubleshooting_text ?(source_keyword = []) ~source_name
    ~source_set_up_option ~source_type () : control_mapping_sources =
  {
    source_description;
    source_frequency;
    source_name;
    source_set_up_option;
    source_type;
    troubleshooting_text;
    source_keyword;
  }

let aws_auditmanager_control ?action_plan_instructions
    ?action_plan_title ?description ?tags ?testing_information ~name
    ~control_mapping_sources () : aws_auditmanager_control =
  {
    action_plan_instructions;
    action_plan_title;
    description;
    name;
    tags;
    testing_information;
    control_mapping_sources;
  }

type t = {
  tf_name : string;
  action_plan_instructions : string prop;
  action_plan_title : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  testing_information : string prop;
  type_ : string prop;
}

let make ?action_plan_instructions ?action_plan_title ?description
    ?tags ?testing_information ~name ~control_mapping_sources __id =
  let __type = "aws_auditmanager_control" in
  let __attrs =
    ({
       tf_name = __id;
       action_plan_instructions =
         Prop.computed __type __id "action_plan_instructions";
       action_plan_title =
         Prop.computed __type __id "action_plan_title";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       testing_information =
         Prop.computed __type __id "testing_information";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_control
        (aws_auditmanager_control ?action_plan_instructions
           ?action_plan_title ?description ?tags ?testing_information
           ~name ~control_mapping_sources ());
    attrs = __attrs;
  }

let register ?tf_module ?action_plan_instructions ?action_plan_title
    ?description ?tags ?testing_information ~name
    ~control_mapping_sources __id =
  let (r : _ Tf_core.resource) =
    make ?action_plan_instructions ?action_plan_title ?description
      ?tags ?testing_information ~name ~control_mapping_sources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
