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
  domain_name : string option; [@option]  (** domain_name *)
  id : string option; [@option]  (** id *)
  lb_name : string;  (** lb_name *)
  name : string;  (** name *)
  subject_alternative_names : string list option; [@option]
      (** subject_alternative_names *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate *)

let aws_lightsail_lb_certificate ?domain_name ?id
    ?subject_alternative_names ~lb_name ~name __resource_id =
  let __resource_type = "aws_lightsail_lb_certificate" in
  let __resource =
    { domain_name; id; lb_name; name; subject_alternative_names }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_certificate __resource);
  ()
