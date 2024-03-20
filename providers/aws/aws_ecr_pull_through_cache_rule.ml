(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_pull_through_cache_rule = {
  credential_arn : string prop option; [@option]
      (** credential_arn *)
  ecr_repository_prefix : string prop;  (** ecr_repository_prefix *)
  id : string prop option; [@option]  (** id *)
  upstream_registry_url : string prop;  (** upstream_registry_url *)
}
[@@deriving yojson_of]
(** aws_ecr_pull_through_cache_rule *)

let aws_ecr_pull_through_cache_rule ?credential_arn ?id
    ~ecr_repository_prefix ~upstream_registry_url () :
    aws_ecr_pull_through_cache_rule =
  {
    credential_arn;
    ecr_repository_prefix;
    id;
    upstream_registry_url;
  }

type t = {
  credential_arn : string prop;
  ecr_repository_prefix : string prop;
  id : string prop;
  registry_id : string prop;
  upstream_registry_url : string prop;
}

let make ?credential_arn ?id ~ecr_repository_prefix
    ~upstream_registry_url __id =
  let __type = "aws_ecr_pull_through_cache_rule" in
  let __attrs =
    ({
       credential_arn = Prop.computed __type __id "credential_arn";
       ecr_repository_prefix =
         Prop.computed __type __id "ecr_repository_prefix";
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
       upstream_registry_url =
         Prop.computed __type __id "upstream_registry_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_pull_through_cache_rule
        (aws_ecr_pull_through_cache_rule ?credential_arn ?id
           ~ecr_repository_prefix ~upstream_registry_url ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_arn ?id ~ecr_repository_prefix
    ~upstream_registry_url __id =
  let (r : _ Tf_core.resource) =
    make ?credential_arn ?id ~ecr_repository_prefix
      ~upstream_registry_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
