(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type region = {
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** region *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssmincidents_replication_set = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  region : region list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssmincidents_replication_set *)

let region ?kms_key_arn ~name () : region = { kms_key_arn; name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ssmincidents_replication_set ?id ?tags ?tags_all ?timeouts
    ~region () : aws_ssmincidents_replication_set =
  { id; tags; tags_all; region; timeouts }

type t = {
  arn : string prop;
  created_by : string prop;
  deletion_protected : bool prop;
  id : string prop;
  last_modified_by : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~region __id =
  let __type = "aws_ssmincidents_replication_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       deletion_protected =
         Prop.computed __type __id "deletion_protected";
       id = Prop.computed __type __id "id";
       last_modified_by =
         Prop.computed __type __id "last_modified_by";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmincidents_replication_set
        (aws_ssmincidents_replication_set ?id ?tags ?tags_all
           ?timeouts ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~region __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
