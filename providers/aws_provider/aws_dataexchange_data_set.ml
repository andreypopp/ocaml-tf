(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dataexchange_data_set = {
  asset_type : string;  (** asset_type *)
  description : string;  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_dataexchange_data_set *)

let aws_dataexchange_data_set ?tags ~asset_type ~description ~name
    __resource_id =
  let __resource_type = "aws_dataexchange_data_set" in
  let __resource = { asset_type; description; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dataexchange_data_set __resource);
  ()
