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

let aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id
    __resource_id =
  let __resource_type = "aws_msk_vpc_connection" in
  let __resource =
    {
      authentication;
      client_subnets;
      id;
      security_groups;
      tags;
      tags_all;
      target_cluster_arn;
      vpc_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_vpc_connection __resource);
  ()
