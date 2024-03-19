(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type global_cluster_members = {
  db_cluster_arn : string prop;  (** db_cluster_arn *)
  is_writer : bool prop;  (** is_writer *)
}
[@@deriving yojson_of]

type aws_rds_global_cluster = {
  database_name : string prop option; [@option]  (** database_name *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  global_cluster_identifier : string prop;
      (** global_cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  source_db_cluster_identifier : string prop option; [@option]
      (** source_db_cluster_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_global_cluster *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_global_cluster ?database_name ?deletion_protection
    ?engine ?engine_version ?force_destroy ?id
    ?source_db_cluster_identifier ?storage_encrypted ?timeouts
    ~global_cluster_identifier () : aws_rds_global_cluster =
  {
    database_name;
    deletion_protection;
    engine;
    engine_version;
    force_destroy;
    global_cluster_identifier;
    id;
    source_db_cluster_identifier;
    storage_encrypted;
    timeouts;
  }

type t = {
  arn : string prop;
  database_name : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  force_destroy : bool prop;
  global_cluster_identifier : string prop;
  global_cluster_members : global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  storage_encrypted : bool prop;
}

let register ?tf_module ?database_name ?deletion_protection ?engine
    ?engine_version ?force_destroy ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier
    __resource_id =
  let __resource_type = "aws_rds_global_cluster" in
  let __resource =
    aws_rds_global_cluster ?database_name ?deletion_protection
      ?engine ?engine_version ?force_destroy ?id
      ?source_db_cluster_identifier ?storage_encrypted ?timeouts
      ~global_cluster_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_global_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       engine_version_actual =
         Prop.computed __resource_type __resource_id
           "engine_version_actual";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       global_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "global_cluster_identifier";
       global_cluster_members =
         Prop.computed __resource_type __resource_id
           "global_cluster_members";
       global_cluster_resource_id =
         Prop.computed __resource_type __resource_id
           "global_cluster_resource_id";
       id = Prop.computed __resource_type __resource_id "id";
       source_db_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "source_db_cluster_identifier";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
     }
      : t)
  in
  __resource_attributes
