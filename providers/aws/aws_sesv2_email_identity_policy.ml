(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sesv2_email_identity_policy = {
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  policy_name : string prop;  (** policy_name *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_policy *)

let aws_sesv2_email_identity_policy ?id ~email_identity ~policy
    ~policy_name () : aws_sesv2_email_identity_policy =
  { email_identity; id; policy; policy_name }

type t = {
  email_identity : string prop;
  id : string prop;
  policy : string prop;
  policy_name : string prop;
}

let make ?id ~email_identity ~policy ~policy_name __id =
  let __type = "aws_sesv2_email_identity_policy" in
  let __attrs =
    ({
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
