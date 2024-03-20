(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_ledger *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode () : aws_qldb_ledger =
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

let make ?deletion_protection ?id ?kms_key ?name ?tags ?tags_all
    ?timeouts ~permissions_mode __id =
  let __type = "aws_qldb_ledger" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       name = Prop.computed __type __id "name";
       permissions_mode =
         Prop.computed __type __id "permissions_mode";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_qldb_ledger
        (aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name
           ?tags ?tags_all ?timeouts ~permissions_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?id ?kms_key ?name ?tags ?tags_all
      ?timeouts ~permissions_mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
