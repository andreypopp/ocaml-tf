(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appsync_type = {
  api_id : string;  (** api_id *)
  definition : string;  (** definition *)
  format : string;  (** format *)
}
[@@deriving yojson_of]
(** aws_appsync_type *)

let aws_appsync_type ~api_id ~definition ~format __resource_id =
  let __resource_type = "aws_appsync_type" in
  let __resource = { api_id; definition; format } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_type __resource);
  ()
