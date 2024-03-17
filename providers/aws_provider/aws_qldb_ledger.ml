(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_qldb_ledger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_qldb_ledger__timeouts *)

type aws_qldb_ledger = {
  deletion_protection : bool option; [@option]
      (** deletion_protection *)
  permissions_mode : string;  (** permissions_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_qldb_ledger__timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_ledger *)

let aws_qldb_ledger ?deletion_protection ?tags ?timeouts
    ~permissions_mode __resource_id =
  let __resource_type = "aws_qldb_ledger" in
  let __resource =
    { deletion_protection; permissions_mode; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_qldb_ledger __resource);
  ()
