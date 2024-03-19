(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?base_capacity ?enhanced_vpc_routing ?id
    ?max_capacity ?port ?publicly_accessible ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?timeouts ~namespace_name
    ~workgroup_name ~config_parameter __resource_id =
  let __resource_type = "aws_redshiftserverless_workgroup" in
  let __resource =
    aws_redshiftserverless_workgroup ?base_capacity
      ?enhanced_vpc_routing ?id ?max_capacity ?port
      ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
      ?tags_all ?timeouts ~namespace_name ~workgroup_name
      ~config_parameter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_workgroup __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       base_capacity =
         Prop.computed __resource_type __resource_id "base_capacity";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __resource_type __resource_id
           "enhanced_vpc_routing";
       id = Prop.computed __resource_type __resource_id "id";
       max_capacity =
         Prop.computed __resource_type __resource_id "max_capacity";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       port = Prop.computed __resource_type __resource_id "port";
       publicly_accessible =
         Prop.computed __resource_type __resource_id
           "publicly_accessible";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       workgroup_id =
         Prop.computed __resource_type __resource_id "workgroup_id";
       workgroup_name =
         Prop.computed __resource_type __resource_id "workgroup_name";
     }
      : t)
  in
  __resource_attributes
