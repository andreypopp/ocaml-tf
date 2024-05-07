(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_policy = {
  email_identity : string prop;
  id : string prop option; [@option]
  policy : string prop;
  policy_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_email_identity_policy) -> ()

let yojson_of_aws_sesv2_email_identity_policy =
  (function
   | {
       email_identity = v_email_identity;
       id = v_id;
       policy = v_policy;
       policy_name = v_policy_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_email_identity
         in
         ("email_identity", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_email_identity_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_email_identity_policy

[@@@deriving.end]

let aws_sesv2_email_identity_policy ?id ~email_identity ~policy
    ~policy_name () : aws_sesv2_email_identity_policy =
  { email_identity; id; policy; policy_name }

type t = {
  tf_name : string;
  email_identity : string prop;
  id : string prop;
  policy : string prop;
  policy_name : string prop;
}

let make ?id ~email_identity ~policy ~policy_name __id =
  let __type = "aws_sesv2_email_identity_policy" in
  let __attrs =
    ({
       tf_name = __id;
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       policy_name = Prop.computed __type __id "policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_email_identity_policy
        (aws_sesv2_email_identity_policy ?id ~email_identity ~policy
           ~policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~email_identity ~policy ~policy_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~email_identity ~policy ~policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
