(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_default_tags = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_default_tags) -> ()

let yojson_of_aws_default_tags =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : aws_default_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_default_tags

[@@@deriving.end]

let aws_default_tags ?id () : aws_default_tags = { id }

type t = {
  tf_name : string;
  id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id __id =
  let __type = "aws_default_tags" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_default_tags (aws_default_tags ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
