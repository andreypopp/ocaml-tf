(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_dkim = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_domain_dkim *)

let aws_ses_domain_dkim ?id ~domain () : aws_ses_domain_dkim =
  { domain; id }

type t = {
  dkim_tokens : string list prop;
  domain : string prop;
  id : string prop;
}

let make ?id ~domain __id =
  let __type = "aws_ses_domain_dkim" in
  let __attrs =
    ({
       dkim_tokens = Prop.computed __type __id "dkim_tokens";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_dkim
        (aws_ses_domain_dkim ?id ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain __id =
  let (r : _ Tf_core.resource) = make ?id ~domain __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
