(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_access_entry__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_access_entry__timeouts *)

type aws_eks_access_entry = {
  cluster_name : string;  (** cluster_name *)
  principal_arn : string;  (** principal_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : aws_eks_access_entry__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_entry *)

let aws_eks_access_entry ?tags ?type_ ?timeouts ~cluster_name
    ~principal_arn __resource_id =
  let __resource_type = "aws_eks_access_entry" in
  let __resource =
    { cluster_name; principal_arn; tags; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_access_entry __resource);
  ()
