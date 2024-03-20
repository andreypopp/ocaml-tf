(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ses_domain_identity_verification = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ses_domain_identity_verification *)

let timeouts ?create () : timeouts = { create }

let aws_ses_domain_identity_verification ?id ?timeouts ~domain () :
    aws_ses_domain_identity_verification =
  { domain; id; timeouts }

type t = {
  arn : string prop;
  domain : string prop;
  id : string prop;
}

let make ?id ?timeouts ~domain __id =
  let __type = "aws_ses_domain_identity_verification" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_identity_verification
        (aws_ses_domain_identity_verification ?id ?timeouts ~domain
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~domain __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
