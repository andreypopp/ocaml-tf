(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_arn = {
  arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_arn) -> ()

let yojson_of_aws_arn =
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
    : aws_arn -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_arn

[@@@deriving.end]

let aws_arn ?id ~arn () : aws_arn = { arn; id }

type t = {
  account : string prop;
  arn : string prop;
  id : string prop;
  partition : string prop;
  region : string prop;
  resource : string prop;
  service : string prop;
}

let make ?id ~arn __id =
  let __type = "aws_arn" in
  let __attrs =
    ({
       account = Prop.computed __type __id "account";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       partition = Prop.computed __type __id "partition";
       region = Prop.computed __type __id "region";
       resource = Prop.computed __type __id "resource";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_arn (aws_arn ?id ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
