(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control_sets__controls = unit [@@deriving_inline yojson_of]

let _ = fun (_ : control_sets__controls) -> ()

let yojson_of_control_sets__controls =
  (yojson_of_unit
    : control_sets__controls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_sets__controls

[@@@deriving.end]

type control_sets = { controls : control_sets__controls list }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_sets) -> ()

let yojson_of_control_sets =
  (function
   | { controls = v_controls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_sets__controls v_controls
         in
         ("controls", arg) :: bnds
       in
       `Assoc bnds
    : control_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_sets

[@@@deriving.end]

type aws_auditmanager_framework = {
  framework_type : string prop;
  name : string prop;
  control_sets : control_sets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_framework) -> ()

let yojson_of_aws_auditmanager_framework =
  (function
   | {
       framework_type = v_framework_type;
       name = v_name;
       control_sets = v_control_sets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_sets v_control_sets
         in
         ("control_sets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_framework_type
         in
         ("framework_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_framework -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_framework

[@@@deriving.end]

let control_sets__controls () = ()
let control_sets ~controls () : control_sets = { controls }

let aws_auditmanager_framework ~framework_type ~name ~control_sets ()
    : aws_auditmanager_framework =
  { framework_type; name; control_sets }

type t = {
  tf_name : string;
  arn : string prop;
  compliance_type : string prop;
  description : string prop;
  framework_type : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ~framework_type ~name ~control_sets __id =
  let __type = "aws_auditmanager_framework" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       compliance_type = Prop.computed __type __id "compliance_type";
       description = Prop.computed __type __id "description";
       framework_type = Prop.computed __type __id "framework_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_framework
        (aws_auditmanager_framework ~framework_type ~name
           ~control_sets ());
    attrs = __attrs;
  }

let register ?tf_module ~framework_type ~name ~control_sets __id =
  let (r : _ Tf_core.resource) =
    make ~framework_type ~name ~control_sets __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
