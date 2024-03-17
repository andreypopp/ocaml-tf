(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lb_listener_certificate = {
  certificate_arn : string;  (** certificate_arn *)
  listener_arn : string;  (** listener_arn *)
}
[@@deriving yojson_of]
(** aws_lb_listener_certificate *)

let aws_lb_listener_certificate ~certificate_arn ~listener_arn
    __resource_id =
  let __resource_type = "aws_lb_listener_certificate" in
  let __resource = { certificate_arn; listener_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_listener_certificate __resource);
  ()
