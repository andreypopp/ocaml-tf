(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type oidc = {
  client_id : string prop;  (** client_id *)
  groups_claim : string prop option; [@option]  (** groups_claim *)
  groups_prefix : string prop option; [@option]  (** groups_prefix *)
  identity_provider_config_name : string prop;
      (** identity_provider_config_name *)
  issuer_url : string prop;  (** issuer_url *)
  required_claims : (string * string prop) list option; [@option]
      (** required_claims *)
  username_claim : string prop option; [@option]
      (** username_claim *)
  username_prefix : string prop option; [@option]
      (** username_prefix *)
}
[@@deriving yojson_of]
(** oidc *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eks_identity_provider_config = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  oidc : oidc list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_identity_provider_config *)

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
