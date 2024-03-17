(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_certificate__domain_validation_records = {
  domain_name : string;  (** domain_name *)
  resource_record_name : string;  (** resource_record_name *)
  resource_record_type : string;  (** resource_record_type *)
  resource_record_value : string;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_lb_certificate = {
  lb_name : string;  (** lb_name *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate *)

let aws_lightsail_lb_certificate ~lb_name ~name __resource_id =
  let __resource_type = "aws_lightsail_lb_certificate" in
  let __resource = { lb_name; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_certificate __resource);
  ()
