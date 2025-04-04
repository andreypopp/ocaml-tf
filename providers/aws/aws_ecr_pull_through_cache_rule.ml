(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_pull_through_cache_rule = {
  credential_arn : string prop option; [@option]
  ecr_repository_prefix : string prop;
  id : string prop option; [@option]
  upstream_registry_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_pull_through_cache_rule) -> ()

let yojson_of_aws_ecr_pull_through_cache_rule =
  (function
   | {
       credential_arn = v_credential_arn;
       ecr_repository_prefix = v_ecr_repository_prefix;
       id = v_id;
       upstream_registry_url = v_upstream_registry_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_upstream_registry_url
         in
         ("upstream_registry_url", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_ecr_repository_prefix
         in
         ("ecr_repository_prefix", arg) :: bnds
       in
       let bnds =
         match v_credential_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credential_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecr_pull_through_cache_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_pull_through_cache_rule

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
