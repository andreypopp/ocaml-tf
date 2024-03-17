(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_config_aggregate_authorization = {
  account_id : string;  (** account_id *)
  region : string;  (** region *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_config_aggregate_authorization *)

let aws_config_aggregate_authorization ?tags ~account_id ~region
    __resource_id =
  let __resource_type = "aws_config_aggregate_authorization" in
  let __resource = { account_id; region; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_aggregate_authorization __resource);
  ()
