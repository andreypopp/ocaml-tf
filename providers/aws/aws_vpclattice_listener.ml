(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type default_action__fixed_response = {
  status_code : float prop;  (** status_code *)
}
[@@deriving yojson_of]
(** default_action__fixed_response *)

type default_action__forward__target_groups = {
  target_group_identifier : string prop option; [@option]
      (** target_group_identifier *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** default_action__forward__target_groups *)

type default_action__forward = {
  target_groups : default_action__forward__target_groups list;
}
[@@deriving yojson_of]
(** default_action__forward *)

type default_action = {
  fixed_response : default_action__fixed_response list;
  forward : default_action__forward list;
}
[@@deriving yojson_of]
(** default_action *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  default_action : default_action list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener *)

let default_action__fixed_response ~status_code () :
    default_action__fixed_response =
  { status_code }

let default_action__forward__target_groups ?target_group_identifier
    ?weight () : default_action__forward__target_groups =
  { target_group_identifier; weight }

let default_action__forward ~target_groups () :
    default_action__forward =
  { target_groups }

let default_action ~fixed_response ~forward () : default_action =
  { fixed_response; forward }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_listener ?id ?port ?service_arn
    ?service_identifier ?tags ?tags_all ?timeouts ~name ~protocol
    ~default_action () : aws_vpclattice_listener =
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

let register ?tf_module ?id ?port ?service_arn ?service_identifier
    ?tags ?tags_all ?timeouts ~name ~protocol ~default_action
    __resource_id =
  let __resource_type = "aws_vpclattice_listener" in
  let __resource =
    aws_vpclattice_listener ?id ?port ?service_arn
      ?service_identifier ?tags ?tags_all ?timeouts ~name ~protocol
      ~default_action ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
