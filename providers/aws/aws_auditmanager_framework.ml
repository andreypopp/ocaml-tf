(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control_sets__controls = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_sets__controls) -> ()

let yojson_of_control_sets__controls =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : control_sets__controls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_sets__controls

[@@@deriving.end]

type control_sets = {
  name : string prop;
  controls : control_sets__controls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_sets) -> ()

let yojson_of_control_sets =
  (function
   | { name = v_name; controls = v_controls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_controls then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_sets__controls)
               v_controls
           in
           let bnd = "controls", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : control_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_sets

[@@@deriving.end]

type aws_auditmanager_framework = {
  compliance_type : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  control_sets : control_sets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_framework) -> ()

let yojson_of_aws_auditmanager_framework =
  (function
   | {
       compliance_type = v_compliance_type;
       description = v_description;
       name = v_name;
       tags = v_tags;
       control_sets = v_control_sets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_control_sets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_sets) v_control_sets
           in
           let bnd = "control_sets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_compliance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compliance_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_framework -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_framework

[@@@deriving.end]

let control_sets__controls ~id () : control_sets__controls = { id }

let control_sets ~name ~controls () : control_sets =
  { name; controls }

let aws_auditmanager_framework ?compliance_type ?description ?tags
    ~name ~control_sets () : aws_auditmanager_framework =
  { compliance_type; description; name; tags; control_sets }

type t = {
  tf_name : string;
  arn : string prop;
  compliance_type : string prop;
  description : string prop;
  framework_type : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?compliance_type ?description ?tags ~name ~control_sets __id
    =
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
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_framework
        (aws_auditmanager_framework ?compliance_type ?description
           ?tags ~name ~control_sets ());
    attrs = __attrs;
  }

let register ?tf_module ?compliance_type ?description ?tags ~name
    ~control_sets __id =
  let (r : _ Tf_core.resource) =
    make ?compliance_type ?description ?tags ~name ~control_sets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
