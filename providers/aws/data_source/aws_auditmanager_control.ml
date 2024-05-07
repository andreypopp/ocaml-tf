(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control_mapping_sources__source_keyword = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : control_mapping_sources__source_keyword) -> ()

let yojson_of_control_mapping_sources__source_keyword =
  (yojson_of_unit
    : control_mapping_sources__source_keyword ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_mapping_sources__source_keyword

[@@@deriving.end]

type control_mapping_sources = {
  source_keyword : control_mapping_sources__source_keyword list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_mapping_sources) -> ()

let yojson_of_control_mapping_sources =
  (function
   | { source_keyword = v_source_keyword } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_control_mapping_sources__source_keyword
             v_source_keyword
         in
         ("source_keyword", arg) :: bnds
       in
       `Assoc bnds
    : control_mapping_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_mapping_sources

[@@@deriving.end]

type aws_auditmanager_control = {
  name : string prop;
  type_ : string prop; [@key "type"]
  control_mapping_sources : control_mapping_sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_control) -> ()

let yojson_of_aws_auditmanager_control =
  (function
   | {
       name = v_name;
       type_ = v_type_;
       control_mapping_sources = v_control_mapping_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_mapping_sources
             v_control_mapping_sources
         in
         ("control_mapping_sources", arg) :: bnds
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
    : aws_auditmanager_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_control

[@@@deriving.end]

let control_mapping_sources__source_keyword () = ()

let control_mapping_sources ?(source_keyword = []) () :
    control_mapping_sources =
  { source_keyword }

let aws_auditmanager_control ~name ~type_ ~control_mapping_sources ()
    : aws_auditmanager_control =
  { name; type_; control_mapping_sources }

type t = {
  tf_name : string;
  action_plan_instructions : string prop;
  action_plan_title : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  testing_information : string prop;
  type_ : string prop;
}

let make ~name ~type_ ~control_mapping_sources __id =
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
        (aws_auditmanager_control ~name ~type_
           ~control_mapping_sources ());
    attrs = __attrs;
  }

let register ?tf_module ~name ~type_ ~control_mapping_sources __id =
  let (r : _ Tf_core.resource) =
    make ~name ~type_ ~control_mapping_sources __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
