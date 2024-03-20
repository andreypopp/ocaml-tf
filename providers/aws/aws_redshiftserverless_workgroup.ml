(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config_parameter = {
  parameter_key : string prop;  (** parameter_key *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** config_parameter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type endpoint__vpc_endpoint = {
  network_interface : endpoint__vpc_endpoint__network_interface list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  vpc_endpoint : endpoint__vpc_endpoint list;  (** vpc_endpoint *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_workgroup = {
  base_capacity : float prop option; [@option]  (** base_capacity *)
  enhanced_vpc_routing : bool prop option; [@option]
      (** enhanced_vpc_routing *)
  id : string prop option; [@option]  (** id *)
  max_capacity : float prop option; [@option]  (** max_capacity *)
  namespace_name : string prop;  (** namespace_name *)
  port : float prop option; [@option]  (** port *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  workgroup_name : string prop;  (** workgroup_name *)
  config_parameter : config_parameter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_redshiftserverless_workgroup *)

let config_parameter ~parameter_key ~parameter_value () :
    config_parameter =
  { parameter_key; parameter_value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshiftserverless_workgroup ?base_capacity
    ?enhanced_vpc_routing ?id ?max_capacity ?port
    ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
    ?tags_all ?timeouts ~namespace_name ~workgroup_name
    ~config_parameter () : aws_redshiftserverless_workgroup =
  {
    base_capacity;
    enhanced_vpc_routing;
    id;
    max_capacity;
    namespace_name;
    port;
    publicly_accessible;
    security_group_ids;
    subnet_ids;
    tags;
    tags_all;
    workgroup_name;
    config_parameter;
    timeouts;
  }

type t = {
  arn : string prop;
  base_capacity : float prop;
  endpoint : endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  max_capacity : float prop;
  namespace_name : string prop;
  port : float prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

let make ?base_capacity ?enhanced_vpc_routing ?id ?max_capacity ?port
    ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
    ?tags_all ?timeouts ~namespace_name ~workgroup_name
    ~config_parameter __id =
  let __type = "aws_redshiftserverless_workgroup" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       base_capacity = Prop.computed __type __id "base_capacity";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       id = Prop.computed __type __id "id";
       max_capacity = Prop.computed __type __id "max_capacity";
       namespace_name = Prop.computed __type __id "namespace_name";
       port = Prop.computed __type __id "port";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workgroup_id = Prop.computed __type __id "workgroup_id";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_workgroup
        (aws_redshiftserverless_workgroup ?base_capacity
           ?enhanced_vpc_routing ?id ?max_capacity ?port
           ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
           ?tags_all ?timeouts ~namespace_name ~workgroup_name
           ~config_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?base_capacity ?enhanced_vpc_routing ?id
    ?max_capacity ?port ?publicly_accessible ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?timeouts ~namespace_name
    ~workgroup_name ~config_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?base_capacity ?enhanced_vpc_routing ?id ?max_capacity ?port
      ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
      ?tags_all ?timeouts ~namespace_name ~workgroup_name
      ~config_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
