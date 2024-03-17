(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpclattice_access_log_subscription = {
  destination_arn : string;  (** destination_arn *)
  resource_identifier : string;  (** resource_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_vpclattice_access_log_subscription *)

let aws_vpclattice_access_log_subscription ?tags ~destination_arn
    ~resource_identifier __resource_id =
  let __resource_type = "aws_vpclattice_access_log_subscription" in
  let __resource = { destination_arn; resource_identifier; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_access_log_subscription __resource);
  ()
