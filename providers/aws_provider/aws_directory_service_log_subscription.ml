(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_directory_service_log_subscription = {
  directory_id : string;  (** directory_id *)
  log_group_name : string;  (** log_group_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_log_subscription *)

let aws_directory_service_log_subscription ~directory_id
    ~log_group_name __resource_id =
  let __resource_type = "aws_directory_service_log_subscription" in
  let __resource = { directory_id; log_group_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_log_subscription __resource);
  ()