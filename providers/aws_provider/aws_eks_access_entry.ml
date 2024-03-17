(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_access_entry__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_access_entry__timeouts *)

type aws_eks_access_entry = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  kubernetes_groups : string prop list option; [@option]
      (** kubernetes_groups *)
  principal_arn : string prop;  (** principal_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  user_name : string prop option; [@option]  (** user_name *)
  timeouts : aws_eks_access_entry__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_entry *)

let aws_eks_access_entry ?id ?kubernetes_groups ?tags ?tags_all
    ?type_ ?user_name ?timeouts ~cluster_name ~principal_arn
    __resource_id =
  let __resource_type = "aws_eks_access_entry" in
  let __resource =
    {
      cluster_name;
      id;
      kubernetes_groups;
      principal_arn;
      tags;
      tags_all;
      type_;
      user_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_access_entry __resource);
  ()
