(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type media_concurrencies = {
  channel : string prop;  (** channel *)
  concurrency : float prop;  (** concurrency *)
}
[@@deriving yojson_of]
(** media_concurrencies *)

type queue_configs = {
  channel : string prop;  (** channel *)
  delay : float prop;  (** delay *)
  priority : float prop;  (** priority *)
  queue_id : string prop;  (** queue_id *)
}
[@@deriving yojson_of]
(** queue_configs *)

type aws_connect_routing_profile = {
  default_outbound_queue_id : string prop;
      (** default_outbound_queue_id *)
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  media_concurrencies : media_concurrencies list;
  queue_configs : queue_configs list;
}
[@@deriving yojson_of]
(** aws_connect_routing_profile *)

let media_concurrencies ~channel ~concurrency () :
    media_concurrencies =
  { channel; concurrency }

let queue_configs ~channel ~delay ~priority ~queue_id () :
    queue_configs =
  { channel; delay; priority; queue_id }

let aws_connect_routing_profile ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs () :
    aws_connect_routing_profile =
  {
    default_outbound_queue_id;
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    media_concurrencies;
    queue_configs;
  }

type t = {
  arn : string prop;
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  routing_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~default_outbound_queue_id ~description
    ~instance_id ~name ~media_concurrencies ~queue_configs __id =
  let __type = "aws_connect_routing_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_outbound_queue_id =
         Prop.computed __type __id "default_outbound_queue_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       routing_profile_id =
         Prop.computed __type __id "routing_profile_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_routing_profile
        (aws_connect_routing_profile ?id ?tags ?tags_all
           ~default_outbound_queue_id ~description ~instance_id ~name
           ~media_concurrencies ~queue_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~default_outbound_queue_id ~description
      ~instance_id ~name ~media_concurrencies ~queue_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
