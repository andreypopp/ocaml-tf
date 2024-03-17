(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_connection = {
  connection_name : string;  (** connection_name *)
  id : string option; [@option]  (** id *)
  provider_type : string;  (** provider_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_connection *)

let aws_apprunner_connection ?id ?tags ?tags_all ~connection_name
    ~provider_type __resource_id =
  let __resource_type = "aws_apprunner_connection" in
  let __resource =
    { connection_name; id; provider_type; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_connection __resource);
  ()
