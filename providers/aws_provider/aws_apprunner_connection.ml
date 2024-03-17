(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_connection = {
  connection_name : string;  (** connection_name *)
  provider_type : string;  (** provider_type *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_apprunner_connection *)

let aws_apprunner_connection ?tags ~connection_name ~provider_type
    __resource_id =
  let __resource_type = "aws_apprunner_connection" in
  let __resource = { connection_name; provider_type; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_connection __resource);
  ()
