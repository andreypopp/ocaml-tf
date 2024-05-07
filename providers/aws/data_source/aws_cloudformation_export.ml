(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudformation_export = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_export) -> ()

let yojson_of_aws_cloudformation_export =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_cloudformation_export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_export

[@@@deriving.end]

let aws_cloudformation_export ?id ~name () :
    aws_cloudformation_export =
  { id; name }

type t = {
  tf_name : string;
  exporting_stack_id : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

let make ?id ~name __id =
  let __type = "aws_cloudformation_export" in
  let __attrs =
    ({
       tf_name = __id;
       exporting_stack_id =
         Prop.computed __type __id "exporting_stack_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_export
        (aws_cloudformation_export ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
