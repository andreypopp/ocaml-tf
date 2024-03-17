(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_configuration = {
  description : string option; [@option]  (** description *)
  kafka_versions : string list option; [@option]
      (** kafka_versions *)
  name : string;  (** name *)
  server_properties : string;  (** server_properties *)
}
[@@deriving yojson_of]
(** aws_msk_configuration *)

let aws_msk_configuration ?description ?kafka_versions ~name
    ~server_properties __resource_id =
  let __resource_type = "aws_msk_configuration" in
  let __resource =
    { description; kafka_versions; name; server_properties }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_configuration __resource);
  ()
