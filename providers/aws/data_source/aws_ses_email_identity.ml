(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_email_identity = {
  email : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_email_identity) -> ()

let yojson_of_aws_ses_email_identity =
  (function
   | { email = v_email; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : aws_ses_email_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_email_identity

[@@@deriving.end]

let aws_ses_email_identity ?id ~email () : aws_ses_email_identity =
  { email; id }

type t = {
  tf_name : string;
  arn : string prop;
  email : string prop;
  id : string prop;
}

let make ?id ~email __id =
  let __type = "aws_ses_email_identity" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_email_identity
        (aws_ses_email_identity ?id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~email __id =
  let (r : _ Tf_core.resource) = make ?id ~email __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
