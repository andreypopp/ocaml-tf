(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_routing_profile__media_concurrencies = {
  channel : string;  (** channel *)
  concurrency : float;  (** concurrency *)
}
[@@deriving yojson_of]
(** aws_connect_routing_profile__media_concurrencies *)

type aws_connect_routing_profile__queue_configs = {
  channel : string;  (** channel *)
  delay : float;  (** delay *)
  priority : float;  (** priority *)
  queue_arn : string;  (** queue_arn *)
  queue_id : string;  (** queue_id *)
  queue_name : string;  (** queue_name *)
}
[@@deriving yojson_of]
(** aws_connect_routing_profile__queue_configs *)

type aws_connect_routing_profile = {
  default_outbound_queue_id : string;
      (** default_outbound_queue_id *)
  description : string;  (** description *)
  id : string option; [@option]  (** id *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
