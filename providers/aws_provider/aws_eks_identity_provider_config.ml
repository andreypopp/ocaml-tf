(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_identity_provider_config__oidc = {
  client_id : string;  (** client_id *)
  groups_claim : string option; [@option]  (** groups_claim *)
  groups_prefix : string option; [@option]  (** groups_prefix *)
  identity_provider_config_name : string;
      (** identity_provider_config_name *)
  issuer_url : string;  (** issuer_url *)
  required_claims : (string * string) list option; [@option]
      (** required_claims *)
  username_claim : string option; [@option]  (** username_claim *)
  username_prefix : string option; [@option]  (** username_prefix *)
}
[@@deriving yojson_of]
(** aws_eks_identity_provider_config__oidc *)

type aws_eks_identity_provider_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_identity_provider_config__timeouts *)

type aws_eks_identity_provider_config = {
  cluster_name : string;  (** cluster_name *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  oidc : aws_eks_identity_provider_config__oidc list;
  timeouts : aws_eks_identity_provider_config__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_identity_provider_config *)

let aws_eks_identity_provider_config ?id ?tags ?tags_all ?timeouts
    ~cluster_name ~oidc __resource_id =
  let __resource_type = "aws_eks_identity_provider_config" in
  let __resource =
    { cluster_name; id; tags; tags_all; oidc; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_identity_provider_config __resource);
  ()
