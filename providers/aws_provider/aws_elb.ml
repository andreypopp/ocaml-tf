(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elb__access_logs = {
  bucket : string prop;  (** bucket *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  enabled : bool prop option; [@option]  (** enabled *)
  interval : float prop option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** aws_elb__access_logs *)

type aws_elb__health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval : float prop;  (** interval *)
  target : string prop;  (** target *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_elb__health_check *)

type aws_elb__listener = {
  instance_port : float prop;  (** instance_port *)
  instance_protocol : string prop;  (** instance_protocol *)
  lb_port : float prop;  (** lb_port *)
  lb_protocol : string prop;  (** lb_protocol *)
  ssl_certificate_id : string prop option; [@option]
      (** ssl_certificate_id *)
}
[@@deriving yojson_of]
(** aws_elb__listener *)

type aws_elb__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elb__timeouts *)

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
  access_logs : aws_elb__access_logs list;
  health_check : aws_elb__health_check list;
  listener : aws_elb__listener list;
  timeouts : aws_elb__timeouts option;
}
[@@deriving yojson_of]
(** aws_elb *)

let aws_elb ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener __resource_id =
  let __resource_type = "aws_elb" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elb __resource);
  ()
