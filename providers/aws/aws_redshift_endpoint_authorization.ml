(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_endpoint_authorization = {
  account : string prop;  (** account *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  vpc_ids : string prop list option; [@option]  (** vpc_ids *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_authorization *)

type t = {
  account : string prop;
  allowed_all_vpcs : bool prop;
  cluster_identifier : string prop;
  endpoint_count : float prop;
  force_delete : bool prop;
  grantee : string prop;
  grantor : string prop;
  id : string prop;
  vpc_ids : string list prop;
}

let aws_redshift_endpoint_authorization ?force_delete ?id ?vpc_ids
    ~account ~cluster_identifier __resource_id =
  let __resource_type = "aws_redshift_endpoint_authorization" in
  let __resource =
    ({ account; cluster_identifier; force_delete; id; vpc_ids }
      : aws_redshift_endpoint_authorization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_endpoint_authorization __resource);
  let __resource_attributes =
    ({
       account =
         Prop.computed __resource_type __resource_id "account";
       allowed_all_vpcs =
         Prop.computed __resource_type __resource_id
           "allowed_all_vpcs";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       endpoint_count =
         Prop.computed __resource_type __resource_id "endpoint_count";
       force_delete =
         Prop.computed __resource_type __resource_id "force_delete";
       grantee =
         Prop.computed __resource_type __resource_id "grantee";
       grantor =
         Prop.computed __resource_type __resource_id "grantor";
       id = Prop.computed __resource_type __resource_id "id";
       vpc_ids =
         Prop.computed __resource_type __resource_id "vpc_ids";
     }
      : t)
  in
  __resource_attributes
