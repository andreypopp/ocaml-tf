(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_opensearch_vpc_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint__timeouts *)

type aws_opensearch_vpc_endpoint__vpc_options = {
  availability_zones : string list;  (** availability_zones *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint__vpc_options *)

type aws_opensearch_vpc_endpoint = {
  domain_arn : string;  (** domain_arn *)
  timeouts : aws_opensearch_vpc_endpoint__timeouts option;
  vpc_options : aws_opensearch_vpc_endpoint__vpc_options list;
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint *)

let aws_opensearch_vpc_endpoint ?timeouts ~domain_arn ~vpc_options
    __resource_id =
  let __resource_type = "aws_opensearch_vpc_endpoint" in
  let __resource = { domain_arn; timeouts; vpc_options } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_vpc_endpoint __resource);
  ()
