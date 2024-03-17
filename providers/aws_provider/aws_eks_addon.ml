(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_addon__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eks_addon__timeouts *)

type aws_eks_addon = {
  addon_name : string prop;  (** addon_name *)
  addon_version : string prop option; [@option]  (** addon_version *)
  cluster_name : string prop;  (** cluster_name *)
  configuration_values : string prop option; [@option]
      (** configuration_values *)
  id : string prop option; [@option]  (** id *)
  preserve : bool prop option; [@option]  (** preserve *)
  resolve_conflicts : string prop option; [@option]
      (** resolve_conflicts *)
  resolve_conflicts_on_create : string prop option; [@option]
      (** resolve_conflicts_on_create *)
  resolve_conflicts_on_update : string prop option; [@option]
      (** resolve_conflicts_on_update *)
  service_account_role_arn : string prop option; [@option]
      (** service_account_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_eks_addon__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_addon *)

let aws_eks_addon ?addon_version ?configuration_values ?id ?preserve
    ?resolve_conflicts ?resolve_conflicts_on_create
    ?resolve_conflicts_on_update ?service_account_role_arn ?tags
    ?tags_all ?timeouts ~addon_name ~cluster_name __resource_id =
  let __resource_type = "aws_eks_addon" in
  let __resource =
    {
      addon_name;
      addon_version;
      cluster_name;
      configuration_values;
      id;
      preserve;
      resolve_conflicts;
      resolve_conflicts_on_create;
      resolve_conflicts_on_update;
      service_account_role_arn;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_addon __resource);
  ()
