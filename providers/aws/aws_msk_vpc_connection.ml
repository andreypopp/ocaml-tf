(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_vpc_connection = {
  authentication : string prop;  (** authentication *)
  client_subnets : string prop list;  (** client_subnets *)
  id : string prop option; [@option]  (** id *)
  security_groups : string prop list;  (** security_groups *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_cluster_arn : string prop;  (** target_cluster_arn *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_msk_vpc_connection *)

type t = {
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

let aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id
    __resource_id =
  let __resource_type = "aws_msk_vpc_connection" in
  let __resource =
    ({
       authentication;
       client_subnets;
       id;
       security_groups;
       tags;
       tags_all;
       target_cluster_arn;
       vpc_id;
     }
      : aws_msk_vpc_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_vpc_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication =
         Prop.computed __resource_type __resource_id "authentication";
       client_subnets =
         Prop.computed __resource_type __resource_id "client_subnets";
       id = Prop.computed __resource_type __resource_id "id";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_cluster_arn =
         Prop.computed __resource_type __resource_id
           "target_cluster_arn";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
