(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_certificate_attachment = {
  certificate_name : string;  (** certificate_name *)
  id : string option; [@option]  (** id *)
  lb_name : string;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate_attachment *)

let aws_lightsail_lb_certificate_attachment ?id ~certificate_name
    ~lb_name __resource_id =
  let __resource_type = "aws_lightsail_lb_certificate_attachment" in
  let __resource = { certificate_name; id; lb_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_certificate_attachment __resource);
  ()
