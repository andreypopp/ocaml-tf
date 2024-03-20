(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration = {
  from_port : float prop;  (** from_port *)
  protocols : string prop list;  (** protocols *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** destination_configuration *)

type endpoint_configuration = {
  endpoint_id : string prop option; [@option]  (** endpoint_id *)
}
[@@deriving yojson_of]
(** endpoint_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_globalaccelerator_custom_routing_endpoint_group = {
  endpoint_group_region : string prop option; [@option]
      (** endpoint_group_region *)
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
  destination_configuration : destination_configuration list;
  endpoint_configuration : endpoint_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group *)

let destination_configuration ~from_port ~protocols ~to_port () :
    destination_configuration =
  { from_port; protocols; to_port }

let endpoint_configuration ?endpoint_id () : endpoint_configuration =
  { endpoint_id }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_globalaccelerator_custom_routing_endpoint_group
    ?endpoint_group_region ?id ?timeouts ~listener_arn
    ~destination_configuration ~endpoint_configuration () :
    aws_globalaccelerator_custom_routing_endpoint_group =
  {
    endpoint_group_region;
    id;
    listener_arn;
    destination_configuration;
    endpoint_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  endpoint_group_region : string prop;
  id : string prop;
  listener_arn : string prop;
}

let make ?endpoint_group_region ?id ?timeouts ~listener_arn
    ~destination_configuration ~endpoint_configuration __id =
  let __type =
    "aws_globalaccelerator_custom_routing_endpoint_group"
  in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       endpoint_group_region =
         Prop.computed __type __id "endpoint_group_region";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_endpoint_group
        (aws_globalaccelerator_custom_routing_endpoint_group
           ?endpoint_group_region ?id ?timeouts ~listener_arn
           ~destination_configuration ~endpoint_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint_group_region ?id ?timeouts
    ~listener_arn ~destination_configuration ~endpoint_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?endpoint_group_region ?id ?timeouts ~listener_arn
      ~destination_configuration ~endpoint_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
