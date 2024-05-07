(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_inspector_assessment_target = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector_assessment_target) -> ()

let yojson_of_aws_inspector_assessment_target =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_arn = v_resource_group_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_arn", arg in
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
    : aws_inspector_assessment_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector_assessment_target

[@@@deriving.end]

let aws_inspector_assessment_target ?id ?resource_group_arn ~name ()
    : aws_inspector_assessment_target =
  { id; name; resource_group_arn }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_group_arn : string prop;
}

let make ?id ?resource_group_arn ~name __id =
  let __type = "aws_inspector_assessment_target" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_arn =
         Prop.computed __type __id "resource_group_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector_assessment_target
        (aws_inspector_assessment_target ?id ?resource_group_arn
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_group_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_group_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
