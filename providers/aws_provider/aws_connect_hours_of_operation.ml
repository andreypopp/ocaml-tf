(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_hours_of_operation__config__end_time = {
  hours : float;  (** hours *)
  minutes : float;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config__end_time *)

type aws_connect_hours_of_operation__config__start_time = {
  hours : float;  (** hours *)
  minutes : float;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config__start_time *)

type aws_connect_hours_of_operation__config = {
  day : string;  (** day *)
  end_time : aws_connect_hours_of_operation__config__end_time list;
  start_time :
    aws_connect_hours_of_operation__config__start_time list;
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation__config *)

type aws_connect_hours_of_operation = {
  description : string option; [@option]  (** description *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  time_zone : string;  (** time_zone *)
  config : aws_connect_hours_of_operation__config list;
}
[@@deriving yojson_of]
(** aws_connect_hours_of_operation *)

let aws_connect_hours_of_operation ?description ?tags ~instance_id
    ~name ~time_zone ~config __resource_id =
  let __resource_type = "aws_connect_hours_of_operation" in
  let __resource =
    { description; instance_id; name; tags; time_zone; config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_hours_of_operation __resource);
  ()
