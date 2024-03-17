(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_listener__default_action__fixed_response = {
  status_code : float prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__default_action__fixed_response *)

type aws_vpclattice_listener__default_action__forward__target_groups = {
  target_group_identifier : string prop option; [@option]
      (** target_group_identifier *)
  weight : float prop option; [@option]  (** weight *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener__timeouts *)

type aws_vpclattice_listener = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  service_arn : string prop option; [@option]  (** service_arn *)
  service_identifier : string prop option; [@option]
      (** service_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  default_action : aws_vpclattice_listener__default_action list;
  timeouts : aws_vpclattice_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener *)

type t = {
  arn : string prop;
  created_at : string prop;
  id : string prop;
  last_updated_at : string prop;
  listener_id : string prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
  service_arn : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_vpclattice_listener ?id ?port ?service_arn
    ?service_identifier ?tags ?tags_all ?timeouts ~name ~protocol
    ~default_action __resource_id =
  let __resource_type = "aws_vpclattice_listener" in
  let __resource =
    ({
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
      : aws_vpclattice_listener)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_listener __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_at =
         Prop.computed __resource_type __resource_id
           "last_updated_at";
       listener_id =
         Prop.computed __resource_type __resource_id "listener_id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       service_arn =
         Prop.computed __resource_type __resource_id "service_arn";
       service_identifier =
         Prop.computed __resource_type __resource_id
           "service_identifier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
