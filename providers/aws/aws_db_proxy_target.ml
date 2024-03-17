(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_proxy_target = {
  db_cluster_identifier : string prop option; [@option]
      (** db_cluster_identifier *)
  db_instance_identifier : string prop option; [@option]
      (** db_instance_identifier *)
  db_proxy_name : string prop;  (** db_proxy_name *)
  id : string prop option; [@option]  (** id *)
  target_group_name : string prop;  (** target_group_name *)
}
[@@deriving yojson_of]
(** aws_db_proxy_target *)

type t = {
  db_cluster_identifier : string prop;
  db_instance_identifier : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  port : float prop;
  rds_resource_id : string prop;
  target_arn : string prop;
  target_group_name : string prop;
  tracked_cluster_id : string prop;
  type_ : string prop;
}

let aws_db_proxy_target ?db_cluster_identifier
    ?db_instance_identifier ?id ~db_proxy_name ~target_group_name
    __resource_id =
  let __resource_type = "aws_db_proxy_target" in
  let __resource =
    ({
       db_cluster_identifier;
       db_instance_identifier;
       db_proxy_name;
       id;
       target_group_name;
     }
      : aws_db_proxy_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy_target __resource);
  let __resource_attributes =
    ({
       db_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "db_cluster_identifier";
       db_instance_identifier =
         Prop.computed __resource_type __resource_id
           "db_instance_identifier";
       db_proxy_name =
         Prop.computed __resource_type __resource_id "db_proxy_name";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       port = Prop.computed __resource_type __resource_id "port";
       rds_resource_id =
         Prop.computed __resource_type __resource_id
           "rds_resource_id";
       target_arn =
         Prop.computed __resource_type __resource_id "target_arn";
       target_group_name =
         Prop.computed __resource_type __resource_id
           "target_group_name";
       tracked_cluster_id =
         Prop.computed __resource_type __resource_id
           "tracked_cluster_id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
