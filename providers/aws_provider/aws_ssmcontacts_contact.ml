(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_contact = {
  alias : string;  (** alias *)
  display_name : string option; [@option]  (** display_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact *)

let aws_ssmcontacts_contact ?display_name ?tags ~alias ~type_
    __resource_id =
  let __resource_type = "aws_ssmcontacts_contact" in
  let __resource = { alias; display_name; tags; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_contact __resource);
  ()
