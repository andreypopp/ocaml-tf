(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lbs = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lbs) -> ()

let yojson_of_aws_lbs =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lbs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lbs

[@@@deriving.end]

let aws_lbs ?id ?tags () : aws_lbs = { id; tags }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags __id =
  let __type = "aws_lbs" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_lbs (aws_lbs ?id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags __id =
  let (r : _ Tf_core.resource) = make ?id ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
