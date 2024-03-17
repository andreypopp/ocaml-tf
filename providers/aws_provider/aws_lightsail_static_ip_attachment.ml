(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_static_ip_attachment = {
  id : string option; [@option]  (** id *)
  instance_name : string;  (** instance_name *)
  static_ip_name : string;  (** static_ip_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip_attachment *)

let aws_lightsail_static_ip_attachment ?id ~instance_name
    ~static_ip_name __resource_id =
  let __resource_type = "aws_lightsail_static_ip_attachment" in
  let __resource = { id; instance_name; static_ip_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_static_ip_attachment __resource);
  ()
