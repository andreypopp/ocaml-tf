(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type t = {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  table_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
    ~database_name __resource_id =
  let __resource_type = "aws_timestreamwrite_database" in
  let __resource =
    ({ database_name; id; kms_key_id; tags; tags_all }
      : aws_timestreamwrite_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_timestreamwrite_database __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       table_count =
         Prop.computed __resource_type __resource_id "table_count";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
