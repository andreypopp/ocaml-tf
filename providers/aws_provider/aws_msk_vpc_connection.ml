(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_msk_vpc_connection = {
  authentication : string;  (** authentication *)
  client_subnets : string list;  (** client_subnets *)
  security_groups : string list;  (** security_groups *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_cluster_arn : string;  (** target_cluster_arn *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_msk_vpc_connection *)

let aws_msk_vpc_connection ?tags ~authentication ~client_subnets
    ~security_groups ~target_cluster_arn ~vpc_id __resource_id =
  let __resource_type = "aws_msk_vpc_connection" in
  let __resource =
    {
      authentication;
      client_subnets;
      security_groups;
      tags;
      target_cluster_arn;
      vpc_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_vpc_connection __resource);
  ()
