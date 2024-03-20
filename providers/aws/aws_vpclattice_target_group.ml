(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__health_check__matcher = {
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** config__health_check__matcher *)

type config__health_check = {
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
  matcher : config__health_check__matcher list;
}
[@@deriving yojson_of]
(** config__health_check *)

type config = {
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
  health_check : config__health_check list;
}
[@@deriving yojson_of]
(** config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_target_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  config : config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group *)

let config__health_check__matcher ?value () :
    config__health_check__matcher =
  { value }

let config__health_check ?enabled ?health_check_interval_seconds
    ?health_check_timeout_seconds ?healthy_threshold_count ?path
    ?port ?protocol ?protocol_version ?unhealthy_threshold_count
    ~matcher () : config__health_check =
  {
    enabled;
    health_check_interval_seconds;
    health_check_timeout_seconds;
    healthy_threshold_count;
    path;
    port;
    protocol;
    protocol_version;
    unhealthy_threshold_count;
    matcher;
  }

let config ?ip_address_type ?lambda_event_structure_version ?port
    ?protocol ?protocol_version ?vpc_identifier ~health_check () :
    config =
  {
    ip_address_type;
    lambda_event_structure_version;
    port;
    protocol;
    protocol_version;
    vpc_identifier;
    health_check;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_target_group ?id ?tags ?tags_all ?timeouts ~name
    ~type_ ~config () : aws_vpclattice_target_group =
  { id; name; tags; tags_all; type_; config; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~name ~type_ ~config __id =
  let __type = "aws_vpclattice_target_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_target_group
        (aws_vpclattice_target_group ?id ?tags ?tags_all ?timeouts
           ~name ~type_ ~config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name ~type_
    ~config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~name ~type_ ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
