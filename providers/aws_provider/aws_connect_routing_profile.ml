(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_routing_profile__media_concurrencies = {
  channel : string prop;  (** channel *)
  concurrency : float prop;  (** concurrency *)
}
[@@deriving yojson_of]
(** aws_connect_routing_profile__media_concurrencies *)

type aws_connect_routing_profile__queue_configs = {
  channel : string prop;  (** channel *)
  delay : float prop;  (** delay *)
  priority : float prop;  (** priority *)
  queue_arn : string prop;  (** queue_arn *)
  queue_id : string prop;  (** queue_id *)
  queue_name : string prop;  (** queue_name *)
}
[@@deriving yojson_of]
(** aws_connect_routing_profile__queue_configs *)

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
  media_concurrencies :
    aws_connect_routing_profile__media_concurrencies list;
  queue_configs : aws_connect_routing_profile__queue_configs list;
}
[@@deriving yojson_of]
(** aws_connect_routing_profile *)

let aws_connect_routing_profile ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs __resource_id =
  let __resource_type = "aws_connect_routing_profile" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_routing_profile __resource);
  ()
