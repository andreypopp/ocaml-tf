(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_timestreamwrite_database = {
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_database *)

let aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
    ~database_name () : aws_timestreamwrite_database =
  { database_name; id; kms_key_id; tags; tags_all }

type t = {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  table_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_id ?tags ?tags_all ~database_name __id =
  let __type = "aws_timestreamwrite_database" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       table_count = Prop.computed __type __id "table_count";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_timestreamwrite_database
        (aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
           ~database_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?tags ?tags_all
    ~database_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?tags ?tags_all ~database_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
