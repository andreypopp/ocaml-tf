(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** capacity_provider_strategy *)

type load_balancer = {
  container_name : string prop;  (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  load_balancer_name : string prop option; [@option]
      (** load_balancer_name *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
}
[@@deriving yojson_of]
(** load_balancer *)

type network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** network_configuration *)

type scale = {
  unit : string prop option; [@option]  (** unit *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** scale *)

type service_registries = {
  container_name : string prop option; [@option]
      (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  port : float prop option; [@option]  (** port *)
  registry_arn : string prop;  (** registry_arn *)
}
[@@deriving yojson_of]
(** service_registries *)

type aws_ecs_task_set = {
  cluster : string prop;  (** cluster *)
  external_id : string prop option; [@option]  (** external_id *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  launch_type : string prop option; [@option]  (** launch_type *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  service : string prop;  (** service *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  task_definition : string prop;  (** task_definition *)
  wait_until_stable : bool prop option; [@option]
      (** wait_until_stable *)
  wait_until_stable_timeout : string prop option; [@option]
      (** wait_until_stable_timeout *)
  capacity_provider_strategy : capacity_provider_strategy list;
  load_balancer : load_balancer list;
  network_configuration : network_configuration list;
  scale : scale list;
  service_registries : service_registries list;
}
[@@deriving yojson_of]
(** aws_ecs_task_set *)

let capacity_provider_strategy ?base ~capacity_provider ~weight () :
    capacity_provider_strategy =
  { base; capacity_provider; weight }

let load_balancer ?container_port ?load_balancer_name
    ?target_group_arn ~container_name () : load_balancer =
  {
    container_name;
    container_port;
    load_balancer_name;
    target_group_arn;
  }

let network_configuration ?assign_public_ip ?security_groups ~subnets
    () : network_configuration =
  { assign_public_ip; security_groups; subnets }

let scale ?unit ?value () : scale = { unit; value }

let service_registries ?container_name ?container_port ?port
    ~registry_arn () : service_registries =
  { container_name; container_port; port; registry_arn }

let aws_ecs_task_set ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ~cluster ~service ~task_definition
    ~capacity_provider_strategy ~load_balancer ~network_configuration
    ~scale ~service_registries () : aws_ecs_task_set =
  {
    cluster;
    external_id;
    force_delete;
    id;
    launch_type;
    platform_version;
    service;
    tags;
    tags_all;
    task_definition;
    wait_until_stable;
    wait_until_stable_timeout;
    capacity_provider_strategy;
    load_balancer;
    network_configuration;
    scale;
    service_registries;
  }

type t = {
  arn : string prop;
  cluster : string prop;
  external_id : string prop;
  force_delete : bool prop;
  id : string prop;
  launch_type : string prop;
  platform_version : string prop;
  service : string prop;
  stability_status : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_definition : string prop;
  task_set_id : string prop;
  wait_until_stable : bool prop;
  wait_until_stable_timeout : string prop;
}

let make ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ~cluster ~service ~task_definition
    ~capacity_provider_strategy ~load_balancer ~network_configuration
    ~scale ~service_registries __id =
  let __type = "aws_ecs_task_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster = Prop.computed __type __id "cluster";
       external_id = Prop.computed __type __id "external_id";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       platform_version =
         Prop.computed __type __id "platform_version";
       service = Prop.computed __type __id "service";
       stability_status =
         Prop.computed __type __id "stability_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       task_definition = Prop.computed __type __id "task_definition";
       task_set_id = Prop.computed __type __id "task_set_id";
       wait_until_stable =
         Prop.computed __type __id "wait_until_stable";
       wait_until_stable_timeout =
         Prop.computed __type __id "wait_until_stable_timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_task_set
        (aws_ecs_task_set ?external_id ?force_delete ?id ?launch_type
           ?platform_version ?tags ?tags_all ?wait_until_stable
           ?wait_until_stable_timeout ~cluster ~service
           ~task_definition ~capacity_provider_strategy
           ~load_balancer ~network_configuration ~scale
           ~service_registries ());
    attrs = __attrs;
  }

let register ?tf_module ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ~cluster ~service ~task_definition
    ~capacity_provider_strategy ~load_balancer ~network_configuration
    ~scale ~service_registries __id =
  let (r : _ Tf_core.resource) =
    make ?external_id ?force_delete ?id ?launch_type
      ?platform_version ?tags ?tags_all ?wait_until_stable
      ?wait_until_stable_timeout ~cluster ~service ~task_definition
      ~capacity_provider_strategy ~load_balancer
      ~network_configuration ~scale ~service_registries __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
