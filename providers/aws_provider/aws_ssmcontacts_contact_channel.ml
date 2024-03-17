(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_contact_channel__delivery_address = {
  simple_address : string;  (** simple_address *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact_channel__delivery_address *)

type aws_ssmcontacts_contact_channel = {
  contact_id : string;  (** contact_id *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  delivery_address :
    aws_ssmcontacts_contact_channel__delivery_address list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact_channel *)

let aws_ssmcontacts_contact_channel ~contact_id ~name ~type_
    ~delivery_address __resource_id =
  let __resource_type = "aws_ssmcontacts_contact_channel" in
  let __resource = { contact_id; name; type_; delivery_address } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_contact_channel __resource);
  ()
