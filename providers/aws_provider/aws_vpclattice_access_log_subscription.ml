(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_access_log_subscription = {
  destination_arn : string;  (** destination_arn *)
  id : string option; [@option]  (** id *)
  resource_identifier : string;  (** resource_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpclattice_access_log_subscription *)

let aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
    ~destination_arn ~resource_identifier __resource_id =
  let __resource_type = "aws_vpclattice_access_log_subscription" in
  let __resource =
    { destination_arn; id; resource_identifier; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_access_log_subscription __resource);
  ()
