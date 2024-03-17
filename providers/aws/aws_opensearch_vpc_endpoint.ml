(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_vpc_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint__timeouts *)

type aws_opensearch_vpc_endpoint__vpc_options = {
  availability_zones : string prop list;  (** availability_zones *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint__vpc_options *)

type aws_opensearch_vpc_endpoint = {
  domain_arn : string prop;  (** domain_arn *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_opensearch_vpc_endpoint__timeouts option;
  vpc_options : aws_opensearch_vpc_endpoint__vpc_options list;
}
[@@deriving yojson_of]
(** aws_opensearch_vpc_endpoint *)

type t = {
  domain_arn : string prop;
  endpoint : string prop;
  id : string prop;
}

let aws_opensearch_vpc_endpoint ?id ?timeouts ~domain_arn
    ~vpc_options __resource_id =
  let __resource_type = "aws_opensearch_vpc_endpoint" in
  let __resource =
    ({ domain_arn; id; timeouts; vpc_options }
      : aws_opensearch_vpc_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_vpc_endpoint __resource);
  let __resource_attributes =
    ({
       domain_arn =
         Prop.computed __resource_type __resource_id "domain_arn";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
