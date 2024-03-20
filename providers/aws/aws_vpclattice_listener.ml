(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?port ?service_arn ?service_identifier ?tags ?tags_all
    ?timeouts ~name ~protocol ~default_action __id =
  let __type = "aws_vpclattice_listener" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       last_updated_at = Prop.computed __type __id "last_updated_at";
       listener_id = Prop.computed __type __id "listener_id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
       service_arn = Prop.computed __type __id "service_arn";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_listener
        (aws_vpclattice_listener ?id ?port ?service_arn
           ?service_identifier ?tags ?tags_all ?timeouts ~name
           ~protocol ~default_action ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?port ?service_arn ?service_identifier
    ?tags ?tags_all ?timeouts ~name ~protocol ~default_action __id =
  let (r : _ Tf_core.resource) =
    make ?id ?port ?service_arn ?service_identifier ?tags ?tags_all
      ?timeouts ~name ~protocol ~default_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
