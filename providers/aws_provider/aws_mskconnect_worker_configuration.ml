(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mskconnect_worker_configuration = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  properties_file_content : string;  (** properties_file_content *)
}
[@@deriving yojson_of]
(** aws_mskconnect_worker_configuration *)

let aws_mskconnect_worker_configuration ?description ~name
    ~properties_file_content __resource_id =
  let __resource_type = "aws_mskconnect_worker_configuration" in
  let __resource = { description; name; properties_file_content } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mskconnect_worker_configuration __resource);
  ()
