(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpclattice_target_group__config__health_check__matcher = {
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config__health_check__matcher *)

type aws_vpclattice_target_group__config__health_check = {
  enabled : bool option; [@option]  (** enabled *)
  health_check_interval_seconds : float option; [@option]
      (** health_check_interval_seconds *)
  health_check_timeout_seconds : float option; [@option]
      (** health_check_timeout_seconds *)
  healthy_threshold_count : float option; [@option]
      (** healthy_threshold_count *)
  path : string option; [@option]  (** path *)
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  protocol_version : string option; [@option]
      (** protocol_version *)
  unhealthy_threshold_count : float option; [@option]
      (** unhealthy_threshold_count *)
  matcher :
    aws_vpclattice_target_group__config__health_check__matcher list;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config__health_check *)

type aws_vpclattice_target_group__config = {
  ip_address_type : string option; [@option]  (** ip_address_type *)
  lambda_event_structure_version : string option; [@option]
      (** lambda_event_structure_version *)
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  protocol_version : string option; [@option]
      (** protocol_version *)
  vpc_identifier : string option; [@option]  (** vpc_identifier *)
  health_check :
    aws_vpclattice_target_group__config__health_check list;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__config *)

type aws_vpclattice_target_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group__timeouts *)

type aws_vpclattice_target_group = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  config : aws_vpclattice_target_group__config list;
  timeouts : aws_vpclattice_target_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group *)

let aws_vpclattice_target_group ?tags ?timeouts ~name ~type_ ~config
    __resource_id =
  let __resource_type = "aws_vpclattice_target_group" in
  let __resource = { name; tags; type_; config; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_target_group __resource);
  ()
