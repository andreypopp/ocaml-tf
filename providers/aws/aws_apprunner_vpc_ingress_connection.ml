(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?tags_all ~name ~service_arn
    ~ingress_vpc_configuration __id =
  let __type = "aws_apprunner_vpc_ingress_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_arn = Prop.computed __type __id "service_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_vpc_ingress_connection
        (aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all
           ~name ~service_arn ~ingress_vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~service_arn
    ~ingress_vpc_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~service_arn
      ~ingress_vpc_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
