(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_rds_cluster_role_association = {
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  feature_name : string prop;  (** feature_name *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster_role_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_rds_cluster_role_association ?id ?timeouts
    ~db_cluster_identifier ~feature_name ~role_arn () :
    aws_rds_cluster_role_association =
  { db_cluster_identifier; feature_name; id; role_arn; timeouts }

type t = {
  db_cluster_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

let make ?id ?timeouts ~db_cluster_identifier ~feature_name ~role_arn
    __id =
  let __type = "aws_rds_cluster_role_association" in
  let __attrs =
    ({
       db_cluster_identifier =
         Prop.computed __type __id "db_cluster_identifier";
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
      yojson_of_aws_rds_cluster_role_association
        (aws_rds_cluster_role_association ?id ?timeouts
           ~db_cluster_identifier ~feature_name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~db_cluster_identifier
    ~feature_name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~db_cluster_identifier ~feature_name ~role_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
