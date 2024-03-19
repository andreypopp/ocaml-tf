(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type config__end_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** config__end_time *)

type config__start_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** config__start_time *)

type config = {
  day : string prop;  (** day *)
  end_time : config__end_time list;
  start_time : config__start_time list;
}
[@@deriving yojson_of]
(** config *)

type aws_connect_hours_of_operation = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  time_zone : string prop;  (** time_zone *)
  config : config list;
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation *)

let config__end_time ~hours ~minutes () : config__end_time =
  { hours; minutes }

let config__start_time ~hours ~minutes () : config__start_time =
  { hours; minutes }

let config ~day ~end_time ~start_time () : config =
  { day; end_time; start_time }

let aws_connect_hours_of_operation ?description ?id ?tags ?tags_all
    ~instance_id ~name ~time_zone ~config () :
    aws_connect_hours_of_operation =
  {
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    time_zone;
    config;
  }

type t = {
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  time_zone : string prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~instance_id
    ~name ~time_zone ~config __resource_id =
  let __resource_type = "aws_connect_hours_of_operation" in
  let __resource =
    aws_connect_hours_of_operation ?description ?id ?tags ?tags_all
      ~instance_id ~name ~time_zone ~config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_hours_of_operation __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       hours_of_operation_id =
         Prop.computed __resource_type __resource_id
           "hours_of_operation_id";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
