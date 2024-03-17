(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_qldb_ledger__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_qldb_ledger__timeouts *)

type aws_qldb_ledger = {
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop option; [@option]  (** kms_key *)
  name : string prop option; [@option]  (** name *)
  permissions_mode : string prop;  (** permissions_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_qldb_ledger__timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_ledger *)

let aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode __resource_id =
  let __resource_type = "aws_qldb_ledger" in
  let __resource =
    {
      deletion_protection;
      id;
      kms_key;
      name;
      permissions_mode;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_qldb_ledger __resource);
  ()
