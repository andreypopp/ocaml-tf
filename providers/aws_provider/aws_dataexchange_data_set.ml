(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dataexchange_data_set = {
  asset_type : string prop;  (** asset_type *)
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dataexchange_data_set *)

let aws_dataexchange_data_set ?id ?tags ?tags_all ~asset_type
    ~description ~name __resource_id =
  let __resource_type = "aws_dataexchange_data_set" in
  let __resource =
    { asset_type; description; id; name; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dataexchange_data_set __resource);
  ()
