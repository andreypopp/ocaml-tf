(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_identity = {
  domain : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_domain_identity) -> ()

let yojson_of_aws_ses_domain_identity =
  (function
   | { domain = v_domain; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_ses_domain_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_domain_identity

[@@@deriving.end]

let aws_ses_domain_identity ?id ~domain () : aws_ses_domain_identity
    =
  { domain; id }

type t = {
  tf_name : string;
  arn : string prop;
  domain : string prop;
  id : string prop;
  verification_token : string prop;
}

let make ?id ~domain __id =
  let __type = "aws_ses_domain_identity" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       verification_token =
         Prop.computed __type __id "verification_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_identity
        (aws_ses_domain_identity ?id ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain __id =
  let (r : _ Tf_core.resource) = make ?id ~domain __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
