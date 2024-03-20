(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs = {
  bucket : string prop;  (** bucket *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  enabled : bool prop option; [@option]  (** enabled *)
  interval : float prop option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** access_logs *)

type health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval : float prop;  (** interval *)
  target : string prop;  (** target *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** health_check *)

type listener = {
  instance_port : float prop;  (** instance_port *)
  instance_protocol : string prop;  (** instance_protocol *)
  lb_port : float prop;  (** lb_port *)
  lb_protocol : string prop;  (** lb_protocol *)
  ssl_certificate_id : string prop option; [@option]
      (** ssl_certificate_id *)
}
[@@deriving yojson_of]
(** listener *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_elb = {
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  connection_draining : bool prop option; [@option]
      (** connection_draining *)
  connection_draining_timeout : float prop option; [@option]
      (** connection_draining_timeout *)
  cross_zone_load_balancing : bool prop option; [@option]
      (** cross_zone_load_balancing *)
  desync_mitigation_mode : string prop option; [@option]
      (** desync_mitigation_mode *)
  id : string prop option; [@option]  (** id *)
  idle_timeout : float prop option; [@option]  (** idle_timeout *)
  instances : string prop list option; [@option]  (** instances *)
  internal : bool prop option; [@option]  (** internal *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  source_security_group : string prop option; [@option]
      (** source_security_group *)
  subnets : string prop list option; [@option]  (** subnets *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  access_logs : access_logs list;
  health_check : health_check list;
  listener : listener list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elb *)

let access_logs ?bucket_prefix ?enabled ?interval ~bucket () :
    access_logs =
  { bucket; bucket_prefix; enabled; interval }

let health_check ~healthy_threshold ~interval ~target ~timeout
    ~unhealthy_threshold () : health_check =
  {
    healthy_threshold;
    interval;
    target;
    timeout;
    unhealthy_threshold;
  }

let listener ?ssl_certificate_id ~instance_port ~instance_protocol
    ~lb_port ~lb_protocol () : listener =
  {
    instance_port;
    instance_protocol;
    lb_port;
    lb_protocol;
    ssl_certificate_id;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_elb ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener () : aws_elb =
  {
    availability_zones;
    connection_draining;
    connection_draining_timeout;
    cross_zone_load_balancing;
    desync_mitigation_mode;
    id;
    idle_timeout;
    instances;
    internal;
    name;
    name_prefix;
    security_groups;
    source_security_group;
    subnets;
    tags;
    tags_all;
    access_logs;
    health_check;
    listener;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zones : string list prop;
  connection_draining : bool prop;
  connection_draining_timeout : float prop;
  cross_zone_load_balancing : bool prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  id : string prop;
  idle_timeout : float prop;
  instances : string list prop;
  internal : bool prop;
  name : string prop;
  name_prefix : string prop;
  security_groups : string list prop;
  source_security_group : string prop;
  source_security_group_id : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

let make ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener __id =
  let __type = "aws_elb" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       connection_draining =
         Prop.computed __type __id "connection_draining";
       connection_draining_timeout =
         Prop.computed __type __id "connection_draining_timeout";
       cross_zone_load_balancing =
         Prop.computed __type __id "cross_zone_load_balancing";
       desync_mitigation_mode =
         Prop.computed __type __id "desync_mitigation_mode";
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       idle_timeout = Prop.computed __type __id "idle_timeout";
       instances = Prop.computed __type __id "instances";
       internal = Prop.computed __type __id "internal";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       security_groups = Prop.computed __type __id "security_groups";
       source_security_group =
         Prop.computed __type __id "source_security_group";
       source_security_group_id =
         Prop.computed __type __id "source_security_group_id";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elb
        (aws_elb ?availability_zones ?connection_draining
           ?connection_draining_timeout ?cross_zone_load_balancing
           ?desync_mitigation_mode ?id ?idle_timeout ?instances
           ?internal ?name ?name_prefix ?security_groups
           ?source_security_group ?subnets ?tags ?tags_all ?timeouts
           ~access_logs ~health_check ~listener ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones ?connection_draining
      ?connection_draining_timeout ?cross_zone_load_balancing
      ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
      ?name ?name_prefix ?security_groups ?source_security_group
      ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
      ~listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
