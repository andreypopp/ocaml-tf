(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~db_instance_identifier ~feature_name
    ~role_arn __resource_id =
  let __resource_type = "aws_db_instance_role_association" in
  let __resource =
    aws_db_instance_role_association ?id ~db_instance_identifier
      ~feature_name ~role_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance_role_association __resource);
  let __resource_attributes =
    ({
       db_instance_identifier =
         Prop.computed __resource_type __resource_id
           "db_instance_identifier";
       feature_name =
         Prop.computed __resource_type __resource_id "feature_name";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
