(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_listener__default_action__fixed_response = {
  status_code : float;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__default_action__fixed_response *)

type aws_vpclattice_listener__default_action__forward__target_groups = {
  target_group_identifier : string option; [@option]
      (** target_group_identifier *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__default_action__forward__target_groups *)

type aws_vpclattice_listener__default_action__forward = {
  target_groups :
    aws_vpclattice_listener__default_action__forward__target_groups
    list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__default_action__forward *)

type aws_vpclattice_listener__default_action = {
  fixed_response :
    aws_vpclattice_listener__default_action__fixed_response list;
  forward : aws_vpclattice_listener__default_action__forward list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__default_action *)

type aws_vpclattice_listener__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__timeouts *)

type aws_vpclattice_listener = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  port : float option; [@option]  (** port *)
  protocol : string;  (** protocol *)
  service_arn : string option; [@option]  (** service_arn *)
  service_identifier : string option; [@option]
      (** service_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  default_action : aws_vpclattice_listener__default_action list;
  timeouts : aws_vpclattice_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener *)

let aws_vpclattice_listener ?id ?port ?service_arn
    ?service_identifier ?tags ?tags_all ?timeouts ~name ~protocol
    ~default_action __resource_id =
  let __resource_type = "aws_vpclattice_listener" in
  let __resource =
    {
      id;
      name;
      port;
      protocol;
      service_arn;
      service_identifier;
      tags;
      tags_all;
      default_action;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_listener __resource);
  ()
