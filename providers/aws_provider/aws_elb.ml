(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elb__access_logs = {
  bucket : string;  (** bucket *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  enabled : bool option; [@option]  (** enabled *)
  interval : float option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** aws_elb__access_logs *)

type aws_elb__health_check = {
  healthy_threshold : float;  (** healthy_threshold *)
  interval : float;  (** interval *)
  target : string;  (** target *)
  timeout : float;  (** timeout *)
  unhealthy_threshold : float;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_elb__health_check *)

type aws_elb__listener = {
  instance_port : float;  (** instance_port *)
  instance_protocol : string;  (** instance_protocol *)
  lb_port : float;  (** lb_port *)
  lb_protocol : string;  (** lb_protocol *)
  ssl_certificate_id : string option; [@option]
      (** ssl_certificate_id *)
}
[@@deriving yojson_of]
(** aws_elb__listener *)

type aws_elb__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elb__timeouts *)

type aws_elb = {
  connection_draining : bool option; [@option]
      (** connection_draining *)
  connection_draining_timeout : float option; [@option]
      (** connection_draining_timeout *)
  cross_zone_load_balancing : bool option; [@option]
      (** cross_zone_load_balancing *)
  desync_mitigation_mode : string option; [@option]
      (** desync_mitigation_mode *)
  idle_timeout : float option; [@option]  (** idle_timeout *)
  tags : (string * string) list option; [@option]  (** tags *)
  access_logs : aws_elb__access_logs list;
  health_check : aws_elb__health_check list;
  listener : aws_elb__listener list;
  timeouts : aws_elb__timeouts option;
}
[@@deriving yojson_of]
(** aws_elb *)

let aws_elb ?connection_draining ?connection_draining_timeout
    ?cross_zone_load_balancing ?desync_mitigation_mode ?idle_timeout
    ?tags ?timeouts ~access_logs ~health_check ~listener
    __resource_id =
  let __resource_type = "aws_elb" in
  let __resource =
    {
      connection_draining;
      connection_draining_timeout;
      cross_zone_load_balancing;
      desync_mitigation_mode;
      idle_timeout;
      tags;
      access_logs;
      health_check;
      listener;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elb __resource);
  ()
