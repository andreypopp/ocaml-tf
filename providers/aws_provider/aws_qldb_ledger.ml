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

type t = {
  arn : string prop;
  deletion_protection : bool prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  permissions_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode __resource_id =
  let __resource_type = "aws_qldb_ledger" in
  let __resource =
    ({
       deletion_protection;
       id;
       kms_key;
       name;
       permissions_mode;
       tags;
       tags_all;
       timeouts;
     }
      : aws_qldb_ledger)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_qldb_ledger __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key =
         Prop.computed __resource_type __resource_id "kms_key";
       name = Prop.computed __resource_type __resource_id "name";
       permissions_mode =
         Prop.computed __resource_type __resource_id
           "permissions_mode";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
