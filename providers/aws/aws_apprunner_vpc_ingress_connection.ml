(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ingress_vpc_configuration = {
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** ingress_vpc_configuration *)

type aws_apprunner_vpc_ingress_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_arn : string prop;  (** service_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ingress_vpc_configuration : ingress_vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_ingress_connection *)

let ingress_vpc_configuration ?vpc_endpoint_id ?vpc_id () :
    ingress_vpc_configuration =
  { vpc_endpoint_id; vpc_id }

let aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all ~name
    ~service_arn ~ingress_vpc_configuration () :
    aws_apprunner_vpc_ingress_connection =
  {
    id;
    name;
    service_arn;
    tags;
    tags_all;
    ingress_vpc_configuration;
  }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  service_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name ~service_arn
    ~ingress_vpc_configuration __resource_id =
  let __resource_type = "aws_apprunner_vpc_ingress_connection" in
  let __resource =
    aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all ~name
      ~service_arn ~ingress_vpc_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_vpc_ingress_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       service_arn =
         Prop.computed __resource_type __resource_id "service_arn";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
