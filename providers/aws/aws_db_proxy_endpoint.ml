(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_proxy_endpoint = {
  db_proxy_endpoint_name : string prop;
      (** db_proxy_endpoint_name *)
  db_proxy_name : string prop;  (** db_proxy_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_role : string prop option; [@option]  (** target_role *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  vpc_subnet_ids : string prop list;  (** vpc_subnet_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_proxy_endpoint *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_proxy_endpoint ?id ?tags ?tags_all ?target_role
    ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
    ~db_proxy_name ~vpc_subnet_ids () : aws_db_proxy_endpoint =
  {
    db_proxy_endpoint_name;
    db_proxy_name;
    id;
    tags;
    tags_all;
    target_role;
    vpc_security_group_ids;
    vpc_subnet_ids;
    timeouts;
  }

type t = {
  arn : string prop;
  db_proxy_endpoint_name : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  is_default : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_role : string prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

let make ?id ?tags ?tags_all ?target_role ?vpc_security_group_ids
    ?timeouts ~db_proxy_endpoint_name ~db_proxy_name ~vpc_subnet_ids
    __id =
  let __type = "aws_db_proxy_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       db_proxy_endpoint_name =
         Prop.computed __type __id "db_proxy_endpoint_name";
       db_proxy_name = Prop.computed __type __id "db_proxy_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_role = Prop.computed __type __id "target_role";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
       vpc_subnet_ids = Prop.computed __type __id "vpc_subnet_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_proxy_endpoint
        (aws_db_proxy_endpoint ?id ?tags ?tags_all ?target_role
           ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
           ~db_proxy_name ~vpc_subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?target_role
    ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
    ~db_proxy_name ~vpc_subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?target_role ?vpc_security_group_ids
      ?timeouts ~db_proxy_endpoint_name ~db_proxy_name
      ~vpc_subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
