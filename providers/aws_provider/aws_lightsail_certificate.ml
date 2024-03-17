(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_certificate__domain_validation_options = {
  domain_name : string;  (** domain_name *)
  resource_record_name : string;  (** resource_record_name *)
  resource_record_type : string;  (** resource_record_type *)
  resource_record_value : string;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_certificate = {
  domain_name : string option; [@option]  (** domain_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  subject_alternative_names : string list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_certificate *)

let aws_lightsail_certificate ?domain_name ?id
    ?subject_alternative_names ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_lightsail_certificate" in
  let __resource =
    {
      domain_name;
      id;
      name;
      subject_alternative_names;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_certificate __resource);
  ()
