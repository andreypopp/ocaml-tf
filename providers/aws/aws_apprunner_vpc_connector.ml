(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_vpc_connector = {
  id : string prop option; [@option]  (** id *)
  security_groups : string prop list;  (** security_groups *)
  subnets : string prop list;  (** subnets *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_connector_name : string prop;  (** vpc_connector_name *)
}
[@@deriving yojson_of]
(** aws_apprunner_vpc_connector *)

let aws_apprunner_vpc_connector ?id ?tags ?tags_all ~security_groups
    ~subnets ~vpc_connector_name () : aws_apprunner_vpc_connector =
  {
    id;
    security_groups;
    subnets;
    tags;
    tags_all;
    vpc_connector_name;
  }

type t = {
  arn : string prop;
  id : string prop;
  security_groups : string list prop;
  status : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_connector_name : string prop;
  vpc_connector_revision : float prop;
}

let make ?id ?tags ?tags_all ~security_groups ~subnets
    ~vpc_connector_name __id =
  let __type = "aws_apprunner_vpc_connector" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       security_groups = Prop.computed __type __id "security_groups";
       status = Prop.computed __type __id "status";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_connector_name =
         Prop.computed __type __id "vpc_connector_name";
       vpc_connector_revision =
         Prop.computed __type __id "vpc_connector_revision";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_vpc_connector
        (aws_apprunner_vpc_connector ?id ?tags ?tags_all
           ~security_groups ~subnets ~vpc_connector_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~security_groups ~subnets
    ~vpc_connector_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~security_groups ~subnets
      ~vpc_connector_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
