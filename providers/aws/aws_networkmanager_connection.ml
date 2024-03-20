(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_connection = {
  connected_device_id : string prop;  (** connected_device_id *)
  connected_link_id : string prop option; [@option]
      (** connected_link_id *)
  description : string prop option; [@option]  (** description *)
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connection *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_connection ?connected_link_id ?description ?id
    ?link_id ?tags ?tags_all ?timeouts ~connected_device_id
    ~device_id ~global_network_id () : aws_networkmanager_connection
    =
  {
    connected_device_id;
    connected_link_id;
    description;
    device_id;
    global_network_id;
    id;
    link_id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  connected_device_id : string prop;
  connected_link_id : string prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?connected_link_id ?description ?id ?link_id ?tags ?tags_all
    ?timeouts ~connected_device_id ~device_id ~global_network_id __id
    =
  let __type = "aws_networkmanager_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connected_device_id =
         Prop.computed __type __id "connected_device_id";
       connected_link_id =
         Prop.computed __type __id "connected_link_id";
       description = Prop.computed __type __id "description";
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_connection
        (aws_networkmanager_connection ?connected_link_id
           ?description ?id ?link_id ?tags ?tags_all ?timeouts
           ~connected_device_id ~device_id ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?connected_link_id ?description ?id ?link_id
    ?tags ?tags_all ?timeouts ~connected_device_id ~device_id
    ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?connected_link_id ?description ?id ?link_id ?tags ?tags_all
      ?timeouts ~connected_device_id ~device_id ~global_network_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
