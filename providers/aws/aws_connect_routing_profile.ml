(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs __resource_id =
  let __resource_type = "aws_connect_routing_profile" in
  let __resource =
    aws_connect_routing_profile ?id ?tags ?tags_all
      ~default_outbound_queue_id ~description ~instance_id ~name
      ~media_concurrencies ~queue_configs ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_routing_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_outbound_queue_id =
         Prop.computed __resource_type __resource_id
           "default_outbound_queue_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       routing_profile_id =
         Prop.computed __resource_type __resource_id
           "routing_profile_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
