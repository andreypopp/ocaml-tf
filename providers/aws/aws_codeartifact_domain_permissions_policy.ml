(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_domain_permissions_policy = {
  domain : string prop;  (** domain *)
  domain_owner : string prop option; [@option]  (** domain_owner *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  policy_revision : string prop option; [@option]
      (** policy_revision *)
}
[@@deriving yojson_of]
(** aws_codeartifact_domain_permissions_policy *)

let aws_codeartifact_domain_permissions_policy ?domain_owner ?id
    ?policy_revision ~domain ~policy_document () :
    aws_codeartifact_domain_permissions_policy =
  { domain; domain_owner; id; policy_document; policy_revision }

type t = {
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  policy_document : string prop;
  policy_revision : string prop;
  resource_arn : string prop;
}

let make ?domain_owner ?id ?policy_revision ~domain ~policy_document
    __id =
  let __type = "aws_codeartifact_domain_permissions_policy" in
  let __attrs =
    ({
       domain = Prop.computed __type __id "domain";
       domain_owner = Prop.computed __type __id "domain_owner";
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       policy_revision = Prop.computed __type __id "policy_revision";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeartifact_domain_permissions_policy
        (aws_codeartifact_domain_permissions_policy ?domain_owner ?id
           ?policy_revision ~domain ~policy_document ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_owner ?id ?policy_revision ~domain
    ~policy_document __id =
  let (r : _ Tf_core.resource) =
    make ?domain_owner ?id ?policy_revision ~domain ~policy_document
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
