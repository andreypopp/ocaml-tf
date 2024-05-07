(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_session_context = {
  arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_session_context) -> ()

let yojson_of_aws_iam_session_context =
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
    : aws_iam_session_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_session_context

[@@@deriving.end]

let aws_iam_session_context ?id ~arn () : aws_iam_session_context =
  { arn; id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  issuer_arn : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  session_name : string prop;
}

let make ?id ~arn __id =
  let __type = "aws_iam_session_context" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       issuer_arn = Prop.computed __type __id "issuer_arn";
       issuer_id = Prop.computed __type __id "issuer_id";
       issuer_name = Prop.computed __type __id "issuer_name";
       session_name = Prop.computed __type __id "session_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_session_context
        (aws_iam_session_context ?id ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
