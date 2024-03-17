(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_eks_addon__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eks_addon__timeouts *)

type aws_eks_addon = {
  addon_name : string;  (** addon_name *)
  cluster_name : string;  (** cluster_name *)
  preserve : bool option; [@option]  (** preserve *)
  resolve_conflicts : string option; [@option]
      (** resolve_conflicts *)
  resolve_conflicts_on_create : string option; [@option]
      (** resolve_conflicts_on_create *)
  resolve_conflicts_on_update : string option; [@option]
      (** resolve_conflicts_on_update *)
  service_account_role_arn : string option; [@option]
      (** service_account_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_eks_addon__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_addon *)

let aws_eks_addon ?preserve ?resolve_conflicts
    ?resolve_conflicts_on_create ?resolve_conflicts_on_update
    ?service_account_role_arn ?tags ?timeouts ~addon_name
    ~cluster_name __resource_id =
  let __resource_type = "aws_eks_addon" in
  let __resource =
    {
      addon_name;
      cluster_name;
      preserve;
      resolve_conflicts;
      resolve_conflicts_on_create;
      resolve_conflicts_on_update;
      service_account_role_arn;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_addon __resource);
  ()
