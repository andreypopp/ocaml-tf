(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_thing = {
  attributes : (string * string) list option; [@option]
      (** attributes *)
  name : string;  (** name *)
  thing_type_name : string option; [@option]  (** thing_type_name *)
}
[@@deriving yojson_of]
(** aws_iot_thing *)

let aws_iot_thing ?attributes ?thing_type_name ~name __resource_id =
  let __resource_type = "aws_iot_thing" in
  let __resource = { attributes; name; thing_type_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing __resource);
  ()
