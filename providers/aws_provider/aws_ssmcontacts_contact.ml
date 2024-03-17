(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_contact = {
  alias : string prop;  (** alias *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact *)

let aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all ~alias
    ~type_ __resource_id =
  let __resource_type = "aws_ssmcontacts_contact" in
  let __resource =
    { alias; display_name; id; tags; tags_all; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_contact __resource);
  ()
