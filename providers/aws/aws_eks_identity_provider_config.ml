(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type oidc = {
  client_id : string prop;
  groups_claim : string prop option; [@option]
  groups_prefix : string prop option; [@option]
  identity_provider_config_name : string prop;
  issuer_url : string prop;
  required_claims : (string * string prop) list option; [@option]
  username_claim : string prop option; [@option]
  username_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc) -> ()

let yojson_of_oidc =
  (function
   | {
       client_id = v_client_id;
       groups_claim = v_groups_claim;
       groups_prefix = v_groups_prefix;
       identity_provider_config_name =
         v_identity_provider_config_name;
       issuer_url = v_issuer_url;
       required_claims = v_required_claims;
       username_claim = v_username_claim;
       username_prefix = v_username_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_username_claim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_claim", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required_claims with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "required_claims", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_url in
         ("issuer_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_identity_provider_config_name
         in
         ("identity_provider_config_name", arg) :: bnds
       in
       let bnds =
         match v_groups_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groups_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_claim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groups_claim", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_eks_identity_provider_config = {
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  oidc : oidc list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_identity_provider_config) -> ()

let yojson_of_aws_eks_identity_provider_config =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       oidc = v_oidc;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_oidc then bnds
         else
           let arg = (yojson_of_list yojson_of_oidc) v_oidc in
           let bnd = "oidc", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_identity_provider_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_identity_provider_config

[@@@deriving.end]

let oidc ?groups_claim ?groups_prefix ?required_claims
    ?username_claim ?username_prefix ~client_id
    ~identity_provider_config_name ~issuer_url () : oidc =
  {
    client_id;
    groups_claim;
    groups_prefix;
    identity_provider_config_name;
    issuer_url;
    required_claims;
    username_claim;
    username_prefix;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_eks_identity_provider_config ?id ?tags ?tags_all ?timeouts
    ~cluster_name ~oidc () : aws_eks_identity_provider_config =
  { cluster_name; id; tags; tags_all; oidc; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  cluster_name : string prop;
  id : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~cluster_name ~oidc __id =
  let __type = "aws_eks_identity_provider_config" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_identity_provider_config
        (aws_eks_identity_provider_config ?id ?tags ?tags_all
           ?timeouts ~cluster_name ~oidc ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~cluster_name
    ~oidc __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~cluster_name ~oidc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
