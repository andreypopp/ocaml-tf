(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_domain_permissions_policy = {
  domain : string prop;
  domain_owner : string prop option; [@option]
  id : string prop option; [@option]
  policy_document : string prop;
  policy_revision : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeartifact_domain_permissions_policy) -> ()

let yojson_of_aws_codeartifact_domain_permissions_policy =
  (function
   | {
       domain = v_domain;
       domain_owner = v_domain_owner;
       id = v_id;
       policy_document = v_policy_document;
       policy_revision = v_policy_revision;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_revision", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_document
         in
         ("policy_document", arg) :: bnds
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
         match v_domain_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_codeartifact_domain_permissions_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeartifact_domain_permissions_policy

[@@@deriving.end]

let aws_codeartifact_domain_permissions_policy ?domain_owner ?id
    ?policy_revision ~domain ~policy_document () :
    aws_codeartifact_domain_permissions_policy =
  { domain; domain_owner; id; policy_document; policy_revision }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
