(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_serverless_cluster__client_authentication__sasl__iam = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster__client_authentication__sasl__iam *)

type aws_msk_serverless_cluster__client_authentication__sasl = {
  iam :
    aws_msk_serverless_cluster__client_authentication__sasl__iam list;
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster__client_authentication__sasl *)

type aws_msk_serverless_cluster__client_authentication = {
  sasl : aws_msk_serverless_cluster__client_authentication__sasl list;
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster__client_authentication *)

type aws_msk_serverless_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster__timeouts *)

type aws_msk_serverless_cluster__vpc_config = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster__vpc_config *)

type aws_msk_serverless_cluster = {
  cluster_name : string;  (** cluster_name *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  client_authentication :
    aws_msk_serverless_cluster__client_authentication list;
  timeouts : aws_msk_serverless_cluster__timeouts option;
  vpc_config : aws_msk_serverless_cluster__vpc_config list;
}
[@@deriving yojson_of]
(** aws_msk_serverless_cluster *)

let aws_msk_serverless_cluster ?id ?tags ?tags_all ?timeouts
    ~cluster_name ~client_authentication ~vpc_config __resource_id =
  let __resource_type = "aws_msk_serverless_cluster" in
  let __resource =
    {
      cluster_name;
      id;
      tags;
      tags_all;
      client_authentication;
      timeouts;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_serverless_cluster __resource);
  ()
