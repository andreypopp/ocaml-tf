(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_quick_connect__quick_connect_config__phone_config = {
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** aws_connect_quick_connect__quick_connect_config__phone_config *)

type aws_connect_quick_connect__quick_connect_config__queue_config = {
  contact_flow_id : string;  (** contact_flow_id *)
  queue_id : string;  (** queue_id *)
}
[@@deriving yojson_of]
(** aws_connect_quick_connect__quick_connect_config__queue_config *)

type aws_connect_quick_connect__quick_connect_config__user_config = {
  contact_flow_id : string;  (** contact_flow_id *)
  user_id : string;  (** user_id *)
}
[@@deriving yojson_of]
(** aws_connect_quick_connect__quick_connect_config__user_config *)

type aws_connect_quick_connect__quick_connect_config = {
  quick_connect_type : string;  (** quick_connect_type *)
  phone_config :
    aws_connect_quick_connect__quick_connect_config__phone_config
    list;
  queue_config :
    aws_connect_quick_connect__quick_connect_config__queue_config
    list;
  user_config :
    aws_connect_quick_connect__quick_connect_config__user_config list;
}
[@@deriving yojson_of]
(** aws_connect_quick_connect__quick_connect_config *)

type aws_connect_quick_connect = {
  description : string option; [@option]  (** description *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  quick_connect_config :
    aws_connect_quick_connect__quick_connect_config list;
}
[@@deriving yojson_of]
(** aws_connect_quick_connect *)

let aws_connect_quick_connect ?description ?tags ~instance_id ~name
    ~quick_connect_config __resource_id =
  let __resource_type = "aws_connect_quick_connect" in
  let __resource =
    { description; instance_id; name; tags; quick_connect_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_quick_connect __resource);
  ()
