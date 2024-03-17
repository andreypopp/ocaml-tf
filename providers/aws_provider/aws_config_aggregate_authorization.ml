(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_aggregate_authorization = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  region : string prop;  (** region *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_config_aggregate_authorization *)

let aws_config_aggregate_authorization ?id ?tags ?tags_all
    ~account_id ~region __resource_id =
  let __resource_type = "aws_config_aggregate_authorization" in
  let __resource = { account_id; id; region; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_aggregate_authorization __resource);
  ()
