(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration = {
  vpc_endpoint_id : string option; [@option]  (** vpc_endpoint_id *)
  vpc_id : string option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration *)

type aws_apprunner_vpc_ingress_connection = {
  name : string;  (** name *)
  service_arn : string;  (** service_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  ingress_vpc_configuration :
    aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_ingress_connection *)

let aws_apprunner_vpc_ingress_connection ?tags ~name ~service_arn
    ~ingress_vpc_configuration __resource_id =
  let __resource_type = "aws_apprunner_vpc_ingress_connection" in
  let __resource =
    { name; service_arn; tags; ingress_vpc_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_vpc_ingress_connection __resource);
  ()
