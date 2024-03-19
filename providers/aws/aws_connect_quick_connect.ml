(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type quick_connect_config__phone_config = {
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** quick_connect_config__phone_config *)

type quick_connect_config__queue_config = {
  contact_flow_id : string prop;  (** contact_flow_id *)
  queue_id : string prop;  (** queue_id *)
}
[@@deriving yojson_of]
(** quick_connect_config__queue_config *)

type quick_connect_config__user_config = {
  contact_flow_id : string prop;  (** contact_flow_id *)
  user_id : string prop;  (** user_id *)
}
[@@deriving yojson_of]
(** quick_connect_config__user_config *)

type quick_connect_config = {
  quick_connect_type : string prop;  (** quick_connect_type *)
  phone_config : quick_connect_config__phone_config list;
  queue_config : quick_connect_config__queue_config list;
  user_config : quick_connect_config__user_config list;
}
[@@deriving yojson_of]
(** quick_connect_config *)

type aws_connect_quick_connect = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  quick_connect_config : quick_connect_config list;
}
[@@deriving yojson_of]
(** aws_connect_quick_connect *)

let quick_connect_config__phone_config ~phone_number () :
    quick_connect_config__phone_config =
  { phone_number }

let quick_connect_config__queue_config ~contact_flow_id ~queue_id ()
    : quick_connect_config__queue_config =
  { contact_flow_id; queue_id }

let quick_connect_config__user_config ~contact_flow_id ~user_id () :
    quick_connect_config__user_config =
  { contact_flow_id; user_id }

let quick_connect_config ~quick_connect_type ~phone_config
    ~queue_config ~user_config () : quick_connect_config =
  { quick_connect_type; phone_config; queue_config; user_config }

let aws_connect_quick_connect ?description ?id ?tags ?tags_all
    ~instance_id ~name ~quick_connect_config () :
    aws_connect_quick_connect =
  {
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    quick_connect_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~instance_id
    ~name ~quick_connect_config __resource_id =
  let __resource_type = "aws_connect_quick_connect" in
  let __resource =
    aws_connect_quick_connect ?description ?id ?tags ?tags_all
      ~instance_id ~name ~quick_connect_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_quick_connect __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       quick_connect_id =
         Prop.computed __resource_type __resource_id
           "quick_connect_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
