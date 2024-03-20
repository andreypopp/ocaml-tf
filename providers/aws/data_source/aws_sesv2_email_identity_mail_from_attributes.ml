(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_mail_from_attributes = {
  email_identity : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_email_identity_mail_from_attributes) -> ()

let yojson_of_aws_sesv2_email_identity_mail_from_attributes =
  (function
   | { email_identity = v_email_identity; id = v_id } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_email_identity
         in
         ("email_identity", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_email_identity_mail_from_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_email_identity_mail_from_attributes

[@@@deriving.end]

let aws_sesv2_email_identity_mail_from_attributes ?id ~email_identity
    () : aws_sesv2_email_identity_mail_from_attributes =
  { email_identity; id }

type t = {
  behavior_on_mx_failure : string prop;
  email_identity : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

let make ?id ~email_identity __id =
  let __type = "aws_sesv2_email_identity_mail_from_attributes" in
  let __attrs =
    ({
       behavior_on_mx_failure =
         Prop.computed __type __id "behavior_on_mx_failure";
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
       mail_from_domain =
         Prop.computed __type __id "mail_from_domain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_email_identity_mail_from_attributes
        (aws_sesv2_email_identity_mail_from_attributes ?id
           ~email_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~email_identity __id =
  let (r : _ Tf_core.resource) = make ?id ~email_identity __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
