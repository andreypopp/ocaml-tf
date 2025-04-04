(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lakeformation_resource = {
  arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_resource) -> ()

let yojson_of_aws_lakeformation_resource =
  (function
   | { arn = v_arn; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_resource

[@@@deriving.end]

let aws_lakeformation_resource ?id ~arn () :
    aws_lakeformation_resource =
  { arn; id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  last_modified : string prop;
  role_arn : string prop;
}

let make ?id ~arn __id =
  let __type = "aws_lakeformation_resource" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_resource
        (aws_lakeformation_resource ?id ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
