(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type control__scope = {
  compliance_resource_ids : string prop list;
  compliance_resource_types : string prop list;
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control__scope) -> ()

let yojson_of_control__scope =
  (function
   | {
       compliance_resource_ids = v_compliance_resource_ids;
       compliance_resource_types = v_compliance_resource_types;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_compliance_resource_types
         in
         ("compliance_resource_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_compliance_resource_ids
         in
         ("compliance_resource_ids", arg) :: bnds
       in
       `Assoc bnds
    : control__scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control__scope

[@@@deriving.end]

type control__input_parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control__input_parameter) -> ()

let yojson_of_control__input_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : control__input_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control__input_parameter

[@@@deriving.end]

type control = {
  input_parameter : control__input_parameter list;
  name : string prop;
  scope : control__scope list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control) -> ()

let yojson_of_control =
  (function
   | {
       input_parameter = v_input_parameter;
       name = v_name;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_control__scope v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control__input_parameter
             v_input_parameter
         in
         ("input_parameter", arg) :: bnds
       in
       `Assoc bnds
    : control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control

[@@@deriving.end]

type aws_backup_framework = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_framework) -> ()

let yojson_of_aws_backup_framework =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_backup_framework -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_framework

[@@@deriving.end]

let aws_backup_framework ?id ?tags ~name () : aws_backup_framework =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  control : control list prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_backup_framework" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       control = Prop.computed __type __id "control";
       creation_time = Prop.computed __type __id "creation_time";
       deployment_status =
         Prop.computed __type __id "deployment_status";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_framework
        (aws_backup_framework ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
