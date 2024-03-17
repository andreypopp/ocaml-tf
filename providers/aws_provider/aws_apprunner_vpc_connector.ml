(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_apprunner_vpc_connector ?id ?tags ?tags_all ~security_groups
    ~subnets ~vpc_connector_name __resource_id =
  let __resource_type = "aws_apprunner_vpc_connector" in
  let __resource =
    ({
       id;
       security_groups;
       subnets;
       tags;
       tags_all;
       vpc_connector_name;
     }
      : aws_apprunner_vpc_connector)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_vpc_connector __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       status = Prop.computed __resource_type __resource_id "status";
       subnets =
         Prop.computed __resource_type __resource_id "subnets";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_connector_name =
         Prop.computed __resource_type __resource_id
           "vpc_connector_name";
       vpc_connector_revision =
         Prop.computed __resource_type __resource_id
           "vpc_connector_revision";
     }
      : t)
  in
  __resource_attributes
