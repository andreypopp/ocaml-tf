(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_feedback_attributes = {
  email_forwarding_enabled : bool prop option; [@option]
      (** email_forwarding_enabled *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_feedback_attributes *)

let aws_sesv2_email_identity_feedback_attributes
    ?email_forwarding_enabled ?id ~email_identity () :
    aws_sesv2_email_identity_feedback_attributes =
  { email_forwarding_enabled; email_identity; id }

type t = {
  email_forwarding_enabled : bool prop;
  email_identity : string prop;
  id : string prop;
}

let make ?email_forwarding_enabled ?id ~email_identity __id =
  let __type = "aws_sesv2_email_identity_feedback_attributes" in
  let __attrs =
    ({
       email_forwarding_enabled =
         Prop.computed __type __id "email_forwarding_enabled";
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_email_identity_feedback_attributes
        (aws_sesv2_email_identity_feedback_attributes
           ?email_forwarding_enabled ?id ~email_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?email_forwarding_enabled ?id ~email_identity
    __id =
  let (r : _ Tf_core.resource) =
    make ?email_forwarding_enabled ?id ~email_identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
