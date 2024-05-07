(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_mail_from_attributes = {
  behavior_on_mx_failure : string prop option; [@option]
  email_identity : string prop;
  id : string prop option; [@option]
  mail_from_domain : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_email_identity_mail_from_attributes) -> ()

let yojson_of_aws_sesv2_email_identity_mail_from_attributes =
  (function
   | {
       behavior_on_mx_failure = v_behavior_on_mx_failure;
       email_identity = v_email_identity;
       id = v_id;
       mail_from_domain = v_mail_from_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mail_from_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mail_from_domain", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_email_identity
         in
         ("email_identity", arg) :: bnds
       in
       let bnds =
         match v_behavior_on_mx_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "behavior_on_mx_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sesv2_email_identity_mail_from_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_email_identity_mail_from_attributes

[@@@deriving.end]

let aws_sesv2_email_identity_mail_from_attributes
    ?behavior_on_mx_failure ?id ?mail_from_domain ~email_identity ()
    : aws_sesv2_email_identity_mail_from_attributes =
  { behavior_on_mx_failure; email_identity; id; mail_from_domain }

type t = {
  tf_name : string;
  behavior_on_mx_failure : string prop;
  email_identity : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

let make ?behavior_on_mx_failure ?id ?mail_from_domain
    ~email_identity __id =
  let __type = "aws_sesv2_email_identity_mail_from_attributes" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_sesv2_email_identity_mail_from_attributes
           ?behavior_on_mx_failure ?id ?mail_from_domain
           ~email_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?behavior_on_mx_failure ?id ?mail_from_domain
    ~email_identity __id =
  let (r : _ Tf_core.resource) =
    make ?behavior_on_mx_failure ?id ?mail_from_domain
      ~email_identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
