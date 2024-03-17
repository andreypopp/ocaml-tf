(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dataexchange_revision = {
  comment : string option; [@option]  (** comment *)
  data_set_id : string;  (** data_set_id *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_dataexchange_revision *)

let aws_dataexchange_revision ?comment ?tags ~data_set_id
    __resource_id =
  let __resource_type = "aws_dataexchange_revision" in
  let __resource = { comment; data_set_id; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dataexchange_revision __resource);
  ()
