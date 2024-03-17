(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dataexchange_revision = {
  comment : string prop option; [@option]  (** comment *)
  data_set_id : string prop;  (** data_set_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dataexchange_revision *)

let aws_dataexchange_revision ?comment ?id ?tags ?tags_all
    ~data_set_id __resource_id =
  let __resource_type = "aws_dataexchange_revision" in
  let __resource = { comment; data_set_id; id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dataexchange_revision __resource);
  ()
