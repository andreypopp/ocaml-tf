(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_hours_of_operation__config__end_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config__end_time *)

type aws_connect_hours_of_operation__config__start_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config__start_time *)

type aws_connect_hours_of_operation__config = {
  day : string prop;  (** day *)
  end_time : aws_connect_hours_of_operation__config__end_time list;
  start_time :
    aws_connect_hours_of_operation__config__start_time list;
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config *)

type aws_connect_hours_of_operation = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  time_zone : string prop;  (** time_zone *)
  config : aws_connect_hours_of_operation__config list;
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation *)

let aws_connect_hours_of_operation ?description ?id ?tags ?tags_all
    ~instance_id ~name ~time_zone ~config __resource_id =
  let __resource_type = "aws_connect_hours_of_operation" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_hours_of_operation __resource);
  ()
