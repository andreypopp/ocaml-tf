(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_identity = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_domain_identity *)

let aws_ses_domain_identity ?id ~domain () : aws_ses_domain_identity
    =
  { domain; id }

type t = {
  arn : string prop;
  domain : string prop;
  id : string prop;
  verification_token : string prop;
}

let make ?id ~domain __id =
  let __type = "aws_ses_domain_identity" in
  let __attrs =
    ({
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
