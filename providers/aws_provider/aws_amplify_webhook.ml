(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_webhook = {
  app_id : string;  (** app_id *)
  branch_name : string;  (** branch_name *)
  description : string option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** aws_amplify_webhook *)

let aws_amplify_webhook ?description ~app_id ~branch_name
    __resource_id =
  let __resource_type = "aws_amplify_webhook" in
  let __resource = { app_id; branch_name; description } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_webhook __resource);
  ()
