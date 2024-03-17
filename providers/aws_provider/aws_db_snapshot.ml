(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_db_snapshot__timeouts *)

type aws_db_snapshot = {
  db_instance_identifier : string;  (** db_instance_identifier *)
  db_snapshot_identifier : string;  (** db_snapshot_identifier *)
  shared_accounts : string list option; [@option]
      (** shared_accounts *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_db_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_snapshot *)

let aws_db_snapshot ?shared_accounts ?tags ?timeouts
    ~db_instance_identifier ~db_snapshot_identifier __resource_id =
  let __resource_type = "aws_db_snapshot" in
  let __resource =
    {
      db_instance_identifier;
      db_snapshot_identifier;
      shared_accounts;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_snapshot __resource);
  ()
