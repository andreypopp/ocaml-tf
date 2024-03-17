(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_source_credential = {
  auth_type : string;  (** auth_type *)
  id : string option; [@option]  (** id *)
  server_type : string;  (** server_type *)
  token : string;  (** token *)
  user_name : string option; [@option]  (** user_name *)
}
[@@deriving yojson_of]
(** aws_codebuild_source_credential *)

let aws_codebuild_source_credential ?id ?user_name ~auth_type
    ~server_type ~token __resource_id =
  let __resource_type = "aws_codebuild_source_credential" in
  let __resource =
    { auth_type; id; server_type; token; user_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_source_credential __resource);
  ()
