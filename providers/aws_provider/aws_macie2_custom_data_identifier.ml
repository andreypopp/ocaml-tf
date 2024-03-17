(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_custom_data_identifier = {
  description : string option; [@option]  (** description *)
  ignore_words : string list option; [@option]  (** ignore_words *)
  keywords : string list option; [@option]  (** keywords *)
  regex : string option; [@option]  (** regex *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_macie2_custom_data_identifier *)

let aws_macie2_custom_data_identifier ?description ?ignore_words
    ?keywords ?regex ?tags __resource_id =
  let __resource_type = "aws_macie2_custom_data_identifier" in
  let __resource =
    { description; ignore_words; keywords; regex; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_custom_data_identifier __resource);
  ()
