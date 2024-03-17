(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration = {
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration *)

type aws_apprunner_vpc_ingress_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_arn : string prop;  (** service_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ingress_vpc_configuration :
    aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_ingress_connection *)

let aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all ~name
    ~service_arn ~ingress_vpc_configuration __resource_id =
  let __resource_type = "aws_apprunner_vpc_ingress_connection" in
  let __resource =
    {
      id;
      name;
      service_arn;
      tags;
      tags_all;
      ingress_vpc_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_vpc_ingress_connection __resource);
  ()
