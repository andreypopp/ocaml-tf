(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb = {
  health_check_path : string option; [@option]
      (** health_check_path *)
  instance_port : float;  (** instance_port *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb *)

let aws_lightsail_lb ?health_check_path ?ip_address_type ?tags
    ~instance_port ~name __resource_id =
  let __resource_type = "aws_lightsail_lb" in
  let __resource =
    { health_check_path; instance_port; ip_address_type; name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb __resource);
  ()
