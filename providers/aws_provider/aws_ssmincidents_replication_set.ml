(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmincidents_replication_set__region = {
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  name : string;  (** name *)
  status : string;  (** status *)
  status_message : string;  (** status_message *)
}
[@@deriving yojson_of]
(** aws_ssmincidents_replication_set__region *)

type aws_ssmincidents_replication_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ssmincidents_replication_set__timeouts *)

type aws_ssmincidents_replication_set = {
  tags : (string * string) list option; [@option]  (** tags *)
  region : aws_ssmincidents_replication_set__region list;
  timeouts : aws_ssmincidents_replication_set__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssmincidents_replication_set *)

let aws_ssmincidents_replication_set ?tags ?timeouts ~region
    __resource_id =
  let __resource_type = "aws_ssmincidents_replication_set" in
  let __resource = { tags; region; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmincidents_replication_set __resource);
  ()
