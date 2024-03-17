(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_static_ip = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip *)

let aws_lightsail_static_ip ?id ~name __resource_id =
  let __resource_type = "aws_lightsail_static_ip" in
  let __resource = { id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_static_ip __resource);
  ()
