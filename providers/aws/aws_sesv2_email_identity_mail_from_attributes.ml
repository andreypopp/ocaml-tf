(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_mail_from_attributes = {
  behavior_on_mx_failure : string prop option; [@option]
      (** behavior_on_mx_failure *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
  mail_from_domain : string prop option; [@option]
      (** mail_from_domain *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_mail_from_attributes *)

let aws_sesv2_email_identity_mail_from_attributes
    ?behavior_on_mx_failure ?id ?mail_from_domain ~email_identity ()
    : aws_sesv2_email_identity_mail_from_attributes =
  { behavior_on_mx_failure; email_identity; id; mail_from_domain }

type t = {
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
