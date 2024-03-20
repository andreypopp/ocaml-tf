(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_instance_role_association = {
  db_instance_identifier : string prop;
      (** db_instance_identifier *)
  feature_name : string prop;  (** feature_name *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_db_instance_role_association *)

let aws_db_instance_role_association ?id ~db_instance_identifier
    ~feature_name ~role_arn () : aws_db_instance_role_association =
  { db_instance_identifier; feature_name; id; role_arn }

type t = {
  db_instance_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

let make ?id ~db_instance_identifier ~feature_name ~role_arn __id =
  let __type = "aws_db_instance_role_association" in
  let __attrs =
    ({
       db_instance_identifier =
         Prop.computed __type __id "db_instance_identifier";
       feature_name = Prop.computed __type __id "feature_name";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance_role_association
        (aws_db_instance_role_association ?id ~db_instance_identifier
           ~feature_name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~db_instance_identifier ~feature_name
    ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~db_instance_identifier ~feature_name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
