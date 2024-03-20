(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_vpc_connection = {
  authentication : string prop;  (** authentication *)
  client_subnets : string prop list;  (** client_subnets *)
  id : string prop option; [@option]  (** id *)
  security_groups : string prop list;  (** security_groups *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_cluster_arn : string prop;  (** target_cluster_arn *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_msk_vpc_connection *)

let aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id () :
    aws_msk_vpc_connection =
  {
    authentication;
    client_subnets;
    id;
    security_groups;
    tags;
    tags_all;
    target_cluster_arn;
    vpc_id;
  }

type t = {
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~authentication ~client_subnets
    ~security_groups ~target_cluster_arn ~vpc_id __id =
  let __type = "aws_msk_vpc_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication = Prop.computed __type __id "authentication";
       client_subnets = Prop.computed __type __id "client_subnets";
       id = Prop.computed __type __id "id";
       security_groups = Prop.computed __type __id "security_groups";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_cluster_arn =
         Prop.computed __type __id "target_cluster_arn";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_vpc_connection
        (aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
           ~client_subnets ~security_groups ~target_cluster_arn
           ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~authentication ~client_subnets
      ~security_groups ~target_cluster_arn ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
