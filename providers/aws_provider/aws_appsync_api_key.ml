(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_api_key = {
  api_id : string;  (** api_id *)
  description : string option; [@option]  (** description *)
  expires : string option; [@option]  (** expires *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_api_key *)

let aws_appsync_api_key ?description ?expires ?id ~api_id
    __resource_id =
  let __resource_type = "aws_appsync_api_key" in
  let __resource = { api_id; description; expires; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_api_key __resource);
  ()
