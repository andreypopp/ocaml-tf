(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_service_discovery_instance = {
  attributes : (string * string) list;  (** attributes *)
  instance_id : string;  (** instance_id *)
  service_id : string;  (** service_id *)
}
[@@deriving yojson_of]
(** aws_service_discovery_instance *)

let aws_service_discovery_instance ~attributes ~instance_id
    ~service_id __resource_id =
  let __resource_type = "aws_service_discovery_instance" in
  let __resource = { attributes; instance_id; service_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_service_discovery_instance __resource);
  ()
