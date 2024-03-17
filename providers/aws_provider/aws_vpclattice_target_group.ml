(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_target_group__config__health_check__matcher = {
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config__health_check__matcher *)

type aws_vpclattice_target_group__config__health_check = {
  enabled : bool prop option; [@option]  (** enabled *)
  health_check_interval_seconds : float prop option; [@option]
      (** health_check_interval_seconds *)
  health_check_timeout_seconds : float prop option; [@option]
      (** health_check_timeout_seconds *)
  healthy_threshold_count : float prop option; [@option]
      (** healthy_threshold_count *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  protocol_version : string prop option; [@option]
      (** protocol_version *)
  unhealthy_threshold_count : float prop option; [@option]
      (** unhealthy_threshold_count *)
  matcher :
    aws_vpclattice_target_group__config__health_check__matcher list;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config__health_check *)

type aws_vpclattice_target_group__config = {
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  lambda_event_structure_version : string prop option; [@option]
      (** lambda_event_structure_version *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  protocol_version : string prop option; [@option]
      (** protocol_version *)
  vpc_identifier : string prop option; [@option]
      (** vpc_identifier *)
  health_check :
    aws_vpclattice_target_group__config__health_check list;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config *)

type aws_vpclattice_target_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__timeouts *)

type aws_vpclattice_target_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  config : aws_vpclattice_target_group__config list;
  timeouts : aws_vpclattice_target_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_vpclattice_target_group ?id ?tags ?tags_all ?timeouts ~name
    ~type_ ~config __resource_id =
  let __resource_type = "aws_vpclattice_target_group" in
  let __resource =
    ({ id; name; tags; tags_all; type_; config; timeouts }
      : aws_vpclattice_target_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_target_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
