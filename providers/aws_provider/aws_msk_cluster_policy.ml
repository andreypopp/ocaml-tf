(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_cluster_policy = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_msk_cluster_policy *)

type t = {
  cluster_arn : string prop;
  current_version : string prop;
  id : string prop;
  policy : string prop;
}

let aws_msk_cluster_policy ?id ~cluster_arn ~policy __resource_id =
  let __resource_type = "aws_msk_cluster_policy" in
  let __resource =
    ({ cluster_arn; id; policy } : aws_msk_cluster_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_cluster_policy __resource);
  let __resource_attributes =
    ({
       cluster_arn =
         Prop.computed __resource_type __resource_id "cluster_arn";
       current_version =
         Prop.computed __resource_type __resource_id
           "current_version";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
